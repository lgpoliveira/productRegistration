package info.peilwebsystems.android.productregistration;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import info.peilwebsystems.android.productregistration.dao.MarcaDao;
import info.peilwebsystems.android.productregistration.entidade.Marca;

public class AdicionarMarcaActivity extends AppCompatActivity {

    private static boolean salvoBase;
    private static boolean jaExisteBase;
    private static String nomeMarca;

    private Button btnSalvar;
    private Button btnCancelar;
    private EditText txtNome;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_adicionar_marca);
        txtNome = (EditText) findViewById(R.id.editNomeMarca);
        btnSalvar = (Button) findViewById(R.id.btnSalvarMarca);
        btnCancelar = (Button) findViewById(R.id.btnCancelarMarca);

        btnSalvar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                nomeMarca = txtNome.getText().toString().trim();
                salvoBase = false;
                jaExisteBase = false;
                Thread thread = new Thread(new Runnable() {
                    @Override
                    public void run() {
                        salvarMarca(nomeMarca);
                    }
                });
                thread.start();
                while (thread.isAlive()) {
                    try {
                        Thread.sleep(100);
                    } catch (Exception e) {
                    }
                }

                if (jaExisteBase) {
                    Toast toast = Toast.makeText(getApplicationContext(),
                            "Marca " + nomeMarca + " já existe!", Toast.LENGTH_LONG);
                    toast.show();
                }
                finish();
            }
        });


    }

    private void salvarMarca(String nomeMarca) {
        Marca marca = new Marca();
        marca.setDescricao(nomeMarca);
        MarcaDao marcaDao = new MarcaDao();
        jaExisteBase = marcaDao.existeNaBase(marca);
        if (!jaExisteBase) {
            marcaDao.adicionarMarca(marca);
            salvoBase = true;
        }
    }

}
