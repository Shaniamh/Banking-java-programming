/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services.admin;

import dao.impl.TabunganDao;
import java.util.List;
import model.Tabungan;

/**
 *
 * @author ASUS
 */
public class TabunganService implements adminService<Tabungan, Long> {
    TabunganDao tabunganDao;
    
    public TabunganService(){
        tabunganDao = new TabunganDao();
    }
    
    public static TabunganService getInstance(){
        return ServiceTabunganHolder.INSTANCE;
    }

    @Override
    public boolean register(Tabungan object) {
        tabunganDao.save(object);
        return true;
    }

    @Override
    public Tabungan login(Tabungan object) {
        List<Tabungan> ln = tabunganDao.getAll();
        for(Tabungan t:ln){
            if(compareTo(object,t) == 0) {
                return t;
            }
        }
        return null;
    }

    @Override
    public boolean update(Tabungan object, Long id) {
        tabunganDao.update(object, id);
        return true;
    }

    @Override
    public boolean delete(Long id) {
        tabunganDao.delete(id);
        return true;
    }

    @Override
    public List<Tabungan> getAll() {
        return tabunganDao.getAll();
    }

    @Override
    public Tabungan getById(Long id) {
        return tabunganDao.getById(id);
    }

    @Override
    public int compareTo(Tabungan object1, Tabungan object2) {
        if(object1.getUserName().equals(object2.getUserName())
           && object1.getPassword().equals(object2.getPassword())){
            return 0;
        }
        return 1;
    }
    
    private static class ServiceTabunganHolder{
        private static final TabunganService INSTANCE = new TabunganService();
    }
}
