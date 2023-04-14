package ss11_mvc.repository;

import ss11_mvc.model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> display();
    void save (Product product);

    List<Product> findName(String name);
}
