package info.peilwebsystems.android.productregistration.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import java.util.ArrayList;
import java.util.List;

import info.peilwebsystems.android.productregistration.database.DBHelper;
import info.peilwebsystems.android.productregistration.entidade.Marca;

/**
 * Created by Guga on 17/10/2015.
 */
public class MarcaDao {

    private static final String SELECT_MARCA = "SELECT ID, Descricao FROM Marca ORDER BY Descricao ASC";
    private static final String INSERT_MARCA = "INSERT INTO Marca(Descricao) VALUES ('?')";

    private List<Marca> marcas;

    DBHelper dbHelper;

    public MarcaDao() {
        dbHelper = DBHelper.getInstance();
    }

    public List<Marca> getMarcas(){
        if (marcas == null)
            loadMarcas();
        return marcas;
    }

    private void loadMarcas() {
        marcas = new ArrayList<Marca>();
        SQLiteDatabase database = dbHelper.getReadableDatabase();
        Cursor cursor = database.rawQuery(SELECT_MARCA,null);
        while (cursor.moveToNext()){
            int id = cursor.getInt(1);
            String descricao = cursor.getString(2);
            Marca marca = new Marca(id,descricao);
            marcas.add(marca);
        }
    }

    public void adicionarMarca(Marca marca){
        SQLiteDatabase database = dbHelper.getWritableDatabase();
        database.execSQL(INSERT_MARCA, new String[] {marca.getDescricao()});
        loadMarcas();
    }
}
