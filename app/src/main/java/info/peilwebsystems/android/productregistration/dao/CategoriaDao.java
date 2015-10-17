package info.peilwebsystems.android.productregistration.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import java.util.ArrayList;
import java.util.List;

import info.peilwebsystems.android.productregistration.database.DBHelper;
import info.peilwebsystems.android.productregistration.entidade.Categoria;

/**
 * Created by Guga on 17/10/2015.
 */
public class CategoriaDao {

    private static final String SELECT_CATEGORIA = "SELECT ID, Descricao FROM Categoria";
    private List<Categoria> categorias;

    DBHelper dbHelper;
    public CategoriaDao(){
        dbHelper = DBHelper.getInstance();
    }

    public List<Categoria> getCategorias(){
        if (this.categorias == null)
            loadCategorias();
        return this.categorias;
    }

    private void loadCategorias() {
        categorias = new ArrayList<Categoria>();
        SQLiteDatabase database = dbHelper.getReadableDatabase();
        Cursor cursor = database.rawQuery(SELECT_CATEGORIA,null);
        while (cursor.moveToNext()){
            int id = cursor.getInt(1);
            String descricao = cursor.getString(2);
            Categoria categoria = new Categoria(id,descricao);
            categorias.add(categoria);
        }
    }
}

