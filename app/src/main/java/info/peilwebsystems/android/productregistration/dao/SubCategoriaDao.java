package info.peilwebsystems.android.productregistration.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import java.util.ArrayList;
import java.util.List;

import info.peilwebsystems.android.productregistration.database.DBHelper;
import info.peilwebsystems.android.productregistration.entidade.SubCategoria;

/**
 * Created by Guga on 17/10/2015.
 */
public class SubCategoriaDao {

    private static final String SELECT_SUB_CATEGORIA = "SELECT ID, Descricao FROM Sub_Categoria WHERE ID_Categoria = ?";

    private List<SubCategoria> subCategorias;

    DBHelper dbHelper;
    public SubCategoriaDao(){
        dbHelper = DBHelper.getInstance();
    }

    public List<SubCategoria> getSubCategorias(int idCategoria){
        if (subCategorias == null)
            loadSubCategorias(idCategoria);
        return subCategorias;
    }

    private void loadSubCategorias(int idCategoria) {
        subCategorias = new ArrayList<SubCategoria>();
        SQLiteDatabase database = dbHelper.getReadableDatabase();
        Cursor cursor = database.rawQuery(SELECT_SUB_CATEGORIA,new String[]{String.valueOf(idCategoria)});
        while (cursor.moveToNext()){
            int id = cursor.getInt(1);
            String descricao = cursor.getString(2);
            SubCategoria subCategoria = new SubCategoria(id,idCategoria,descricao);
            subCategorias.add(subCategoria);
        }
    }


}
