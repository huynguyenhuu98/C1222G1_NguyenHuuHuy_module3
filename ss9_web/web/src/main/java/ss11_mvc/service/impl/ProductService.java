package ss11_mvc.service.impl;

import ss11_mvc.model.Product;
import ss11_mvc.repository.IProductRepository;
import ss11_mvc.repository.impl.ProductRepository;
import ss11_mvc.service.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    private final IProductRepository iProductRepository = new ProductRepository();

    @Override
    public List<Product> display() {
        return iProductRepository.display();
    }

    @Override
    public void save(Product product) {
        iProductRepository.save(product);
    }

    @Override
    public List<Product> findName(String name) {
        return iProductRepository.findName(name);
    }


}
