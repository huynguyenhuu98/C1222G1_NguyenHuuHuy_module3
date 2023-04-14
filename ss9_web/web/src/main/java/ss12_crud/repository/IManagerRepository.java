package ss12_crud.repository;

import ss12_crud.model.Manager;

import java.sql.SQLException;
import java.util.List;

public interface IManagerRepository {
    List<Manager> display() throws SQLException;
}
