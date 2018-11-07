/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;

/**
 *
 * @author ASUS
 */
public interface DaoApp<T, ID> {
    
    public void save(T t);
	
    public void update(T t, ID id);
	
    public void delete(ID id);
	
    public List<T> getAll();
	
    public T getById(ID id);
}
