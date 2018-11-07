/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services.admin;

import java.util.List;

/**
 *
 * @author ASUS
 */
public interface adminService<Object, id> {
    public boolean register (Object object);
    
    public Object login (Object object);
    
    public boolean update (Object object, Long id);
    
    public boolean delete (Long id);
    
    public List<Object> getAll();
    
    public Object getById(Long id);
    
    public int compareTo(Object object1, Object object2);
}
