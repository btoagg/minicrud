package mx.edu.utez.crudco.crudco.model;

import java.util.List;

public interface DaoRepository <T>{
    List <T> findAll();
    T findOne(int id);
    boolean update (int id, Producto prd);
    boolean delete (int id);
}
