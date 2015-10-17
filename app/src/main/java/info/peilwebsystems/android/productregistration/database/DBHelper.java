package info.peilwebsystems.android.productregistration.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import info.peilwebsystems.android.productregistration.R;

/**
 * Created by Guga on 17/10/2015.
 */
public class DBHelper extends SQLiteOpenHelper {

    private static final int VERSAO = 1;
    private static final String NOME_BASE = "DB_MY_CAR_STATUS";


    private static DBHelper instance;
    private static Context context;


    public DBHelper(Context ctx) {
        super(ctx, NOME_BASE, null, VERSAO);
    }

    public static void init(Context ctx) {
        instance = new DBHelper(ctx);
        context = ctx;
    }

    public static DBHelper getInstance() {
        if (instance == null)
            throw new IllegalStateException("Banco não inicializado.");
        return instance;
    }


    @Override
    public void onCreate(SQLiteDatabase db) {

        InputStream createStream = context.getResources().openRawResource(
                R.raw.criar_db);
        BufferedReader createReader = new BufferedReader(new InputStreamReader(
                createStream));

        try {
            while (createReader.ready()) {
                String createStmt = createReader.readLine();
                db.execSQL(createStmt);
            }
        } catch (Exception e) {
        } finally {

            try {
                createReader.close();
                createStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }


    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

    }
}
