package com.zjqy.purchaseplatform.mybitis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;


public interface BaseMapper<T> {  
    
	@Select(value="select * from ")
    public T getOne(String id);  
      
    public T getCasecade(String id);  
      
    public List<T> getAll();  
     
    public void insert(T entity);  
      
    public void delete(T entity);  
      
    public void update(T entity);  
} 
