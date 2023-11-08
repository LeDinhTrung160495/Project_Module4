package com.ra.serviceImp;

import com.ra.model.Product;
import com.ra.repository.ProductRepository;
import com.ra.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductServiceImp implements ProductService {
    @Autowired
    private ProductRepository productRepository;
    @Override
    public List<Product> displayData(String productName, int page, int size, String direction, String sortBy) {
        //Khởi tạo đối tượng Pageable
        Pageable pageable = PageRequest.of(page,size,
                direction.equals("ASC")? Sort.Direction.ASC: Sort.Direction.DESC,sortBy);
        List<Product> listProduct = productRepository.findByProductName(productName,pageable).getContent();
        return listProduct;
    }

    @Override
    public List<Integer> getListPage(String productName, int size) {
        int countProduct = productRepository.countByProductNameContains(productName);
        List<Integer> listPage = new ArrayList<>();
        for (int i = 0; i < (int) Math.ceil((double) countProduct / (double) size); i++) {
            listPage.add(i+1);
        }
        return listPage;
    }

    @Override
    public Product findById(int productId) {
        return null;
    }

    @Override
    public boolean save(Product product) {
        return false;
    }

    @Override
    public boolean update(Product product) {
        return false;
    }

    @Override
    public boolean delete(int productId) {
        return false;
    }
}