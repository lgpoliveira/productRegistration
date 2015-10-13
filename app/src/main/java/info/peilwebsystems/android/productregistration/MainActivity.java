package info.peilwebsystems.android.productregistration;

import android.content.Intent;
import android.net.http.AndroidHttpClient;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.google.zxing.integration.android.IntentIntegrator;
import com.google.zxing.integration.android.IntentResult;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONObject;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;


public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    private Button scan;
    private static final String ServerIP = "ServerIP";
    private static final String ServerPort = "ServerPort";
    private static final String ServerURL = "http://peilwebsystems.info/ServerAndroid/QualMercado/";

    private static String codigoBarras;
    private static boolean existeNaBase = false;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        scan = (Button) findViewById(R.id.btnScan);
        scan.setOnClickListener(this);
    }

    public void onActivityResult(int requestCode, int resultCode, Intent intent) {
        IntentResult scanningResult = IntentIntegrator.parseActivityResult(requestCode, resultCode, intent);
        if (scanningResult != null) {
            codigoBarras = scanningResult.getContents();
            if (!existeNaBase()) {
                Intent cadIntent = new Intent(this, CadastroActivity.class);
                cadIntent.putExtra("codigoBarras", codigoBarras);
                startActivity(cadIntent);
            } else {
                String text = "O produto " + codigoBarras + " já existe na base!";
                Toast toast = Toast.makeText(getApplicationContext(),
                        text, Toast.LENGTH_SHORT);
                toast.show();
            }

        } else {
            Toast toast = Toast.makeText(getApplicationContext(),
                    "No scan data received!", Toast.LENGTH_SHORT);
            toast.show();
        }

    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }


    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }

    @Override
    public void onClick(View v) {
        if (v.getId() == R.id.btnScan) {
            IntentIntegrator scanIntegrator = new IntentIntegrator(this);
            scanIntegrator.setDesiredBarcodeFormats(IntentIntegrator.PRODUCT_CODE_TYPES);
            scanIntegrator.setCaptureActivity(myCaptureActivity.class);
            scanIntegrator.setOrientationLocked(true);
            scanIntegrator.setBeepEnabled(true);
            scanIntegrator.initiateScan();
        }
    }

    /**
     * Verifica na base se o produto já está cadastrado
     *
     *  @return boolean
     */
    private boolean existeNaBase() {
        existeNaBase = false;
        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                AndroidHttpClient  client = AndroidHttpClient.newInstance("Android");
                HttpPost post = new HttpPost(ServerURL + "existeNaBaseLocal/");
                try {
                    JSONObject json = new JSONObject();
                    json.put("codigo_produto", codigoBarras);

                    post.setEntity(new StringEntity(json.toString()));
                    HttpResponse response = client.execute(post);
                    int code = response.getStatusLine().getStatusCode();

                    existeNaBase =  (code == 200);


                } catch (Exception e) {
                    Toast toast = Toast.makeText(getApplicationContext(),
                            e.getMessage(), Toast.LENGTH_LONG);
                    toast.show();
                }finally {
                    if(client != null){
                       client.close();
                    }
                }

            }
        });
        t.start();
        while(t.isAlive()){
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        return existeNaBase;

    }
}
