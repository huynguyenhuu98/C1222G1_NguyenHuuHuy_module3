package ss11_mvc.service;

import ss11_mvc.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> display();
    void save (Product product);
    List<Product> findName(String name);
}
