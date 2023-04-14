package ss12_crud.service;

import ss12_crud.model.Manager;

import java.sql.SQLException;
import java.util.List;

public interface IManagerService {
    List<Manager> display() throws SQLException;
}
