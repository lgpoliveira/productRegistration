package info.peilwebsystems.android.productregistration.entidade;

/**
 * Created by Guga on 17/10/2015.
 */
public class SubCategoria {



    private int id;
    private int idCategoria;
    private String descricao;

    public SubCategoria(int id, int idCategoria, String descricao) {
        this.id = id;
        this.idCategoria = idCategoria;
        this.descricao = descricao;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
}
