package ss12_crud.service.impl;

import ss12_crud.model.Manager;
import ss12_crud.repository.IManagerRepository;
import ss12_crud.repository.impl.ManagerRepository;
import ss12_crud.service.IManagerService;

import java.sql.SQLException;
import java.util.List;

public class ManagerService implements IManagerService {
    private IManagerRepository iManagerRepository = new ManagerRepository();
    @Override
    public List<Manager> display() throws SQLException {
        return iManagerRepository.display();
    }
}
