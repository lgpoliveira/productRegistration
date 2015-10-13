package info.peilwebsystems.android.productregistration;

import android.content.Intent;
import android.net.http.AndroidHttpClient;
import android.os.Bundle;
import android.os.Looper;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.json.JSONObject;
import org.w3c.dom.Text;

import java.net.URLEncoder;

public class CadastroActivity extends AppCompatActivity {

    private static final String ServerURL = "http://peilwebsystems.info/ServerAndroid/QualMercado/";

    static String nome;
    static String alias;
    static String descricao;
    static boolean salvoBase;


    String codigoBarras;
    Button btnSalvar;
    Button btnCancelar;
    EditText txtNome;
    EditText txtAlias;
    EditText txtDescricao;

    TextView txtCodigoBarras;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_cadastro);
        Intent intent = getIntent();

        codigoBarras = intent.getStringExtra("codigoBarras");
        txtCodigoBarras = (TextView) findViewById(R.id.valueCodigo);
        txtCodigoBarras.setText(codigoBarras);

        txtNome = (EditText) findViewById(R.id.editTextNome);
        txtAlias = (EditText) findViewById(R.id.editTextAlias);
        txtAlias.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (!hasFocus) {
                    if (txtNome.getText().length() > 0 && txtAlias.getText().length() > 0) {
                        btnSalvar.setActivated(true);
                    } else {
                        btnSalvar.setActivated(false);
                    }

                }
            }
        });

        txtDescricao = (EditText) findViewById(R.id.editTextDesc);

        btnSalvar = (Button) findViewById(R.id.btnSalvar);
        btnSalvar.setActivated(false);
        btnSalvar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                salvoBase = false;
                nome = txtNome.getText().toString();
                alias = txtAlias.getText().toString();
                descricao = txtDescricao.getText().toString();
                if (camposObrigatoriosPreenchidos()) {
                    Thread t = new Thread(new Runnable() {
                        @Override
                        public void run() {
                            salvarProduto(nome, alias, descricao);
                        }
                    });
                    t.start();
                    while (t.isAlive())
                        try {
                            Thread.sleep(100);
                        } catch (Exception e) {
                        }
                    if (salvoBase) {
                        Toast toast = Toast.makeText(getApplicationContext(),
                                "Produto " + nome + " salvo na base!", Toast.LENGTH_LONG);
                        toast.show();
                    }
                    finish();
                }
            }
        });

        btnCancelar = (Button) findViewById(R.id.btnCancelar);
        btnCancelar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });


    }

    private boolean camposObrigatoriosPreenchidos() {
        if (txtNome.getText().toString().trim().length() == 0){
            Toast toast = Toast.makeText(getApplicationContext(),
                    "O campo NOME deve ser preenchido!", Toast.LENGTH_LONG);
            toast.show();
            return false;
        }

        if (txtAlias.getText().toString().trim().length() == 0){
            Toast toast = Toast.makeText(getApplicationContext(),
                    "O campo ALIAS deve ser preenchido!", Toast.LENGTH_LONG);
            toast.show();
            return false;
        }

        return true;
    }

    private void salvarProduto(String nome, String alias, String descricao) {
        AndroidHttpClient client = AndroidHttpClient.newInstance("Android");
        HttpPost post = new HttpPost(ServerURL + "adicionarProduto/");
        Looper.prepare();
        try {

            JSONObject json = new JSONObject();
            json.put("codigo_produto", codigoBarras);
            json.put("nome_produto", URLEncoder.encode(nome, "UTF8"));
            json.put("alias_produto", URLEncoder.encode(alias, "UTF8"));
            json.put("desc_produto", URLEncoder.encode(descricao, "UTF8"));

            post.setEntity(new StringEntity(json.toString()));
            HttpResponse response = client.execute(post);
            int code = response.getStatusLine().getStatusCode();

            if (code == 200) {
                salvoBase = true;
                post = new HttpPost(ServerURL + "adicionarNaBaseExterna/");
                post.setEntity(new StringEntity(json.toString()));
                client.execute(post);
            }

        } catch (Exception e) {
            Toast toast = Toast.makeText(getApplicationContext(),
                    "Falha ao gravar Produto!", Toast.LENGTH_LONG);
            toast.show();
        }finally {
            if (client != null){
                client.close();
            }

        }



    }

}
