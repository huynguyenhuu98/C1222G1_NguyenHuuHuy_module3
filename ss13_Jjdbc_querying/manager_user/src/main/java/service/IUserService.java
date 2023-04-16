package service;

import model.User;

import java.util.List;

public interface IUserService {
    List<User> findAll();
    void save(User user);
    void delete(int id);
    List<User> findByName(String name);
    void addUserTransaction();
}