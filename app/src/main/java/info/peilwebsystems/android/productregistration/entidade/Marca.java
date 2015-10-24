package info.peilwebsystems.android.productregistration.entidade;

/**
 * Created by Guga on 17/10/2015.
 */
public class Marca {



    private int id;
    private String descricao;

    public Marca(int id, String descricao) {
        this.id = id;
        this.descricao = descricao;
    }

    public Marca() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
}
