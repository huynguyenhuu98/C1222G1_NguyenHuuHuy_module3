package ss12_crud.repository.impl;

import ss12_crud.model.Manager;
import ss12_crud.repository.IManagerRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ManagerRepository implements IManagerRepository {

    @Override
    public List<Manager> display() {
        List<Manager> managerList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = BaseRepository.getConnection().prepareStatement
                    ("select id,name,email,country from manager");
            ResultSet resultSet = preparedStatement.executeQuery();
            Manager manager;
            if (resultSet.next()) {
                manager = new Manager();
                manager.setId(resultSet.getInt("id"));
                manager.setName(resultSet.getString("name"));
                manager.setEmail(resultSet.getString("email"));
                manager.getCountry(resultSet.getString("country"));
                return (List<Manager>) manager;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
