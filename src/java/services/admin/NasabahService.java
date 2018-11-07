/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services.admin;

import dao.impl.NasabahDao;
import java.util.List;
import model.Nasabah;

/**
 *
 * @author ASUS
 */
public class NasabahService implements adminService<Nasabah, Long> {
    NasabahDao nasabahDao;
    
    public NasabahService(){
        nasabahDao = new NasabahDao();
    }
    
    public static NasabahService getInstance(){
        return ServiceNasabahHolder.INSTANCE;
    }

    @Override
    public boolean register(Nasabah object) {
        nasabahDao.save(object);
        return true;
    }

    @Override
    public Nasabah login(Nasabah object) {
        List<Nasabah> ln = nasabahDao.getAll();
        for(Nasabah n:ln){
            if(compareTo(object,n) == 0)
                return n;
        }
        return null;
    }

    @Override
    public boolean update(Nasabah object, Long id) {
        nasabahDao.update(object, id);
        return true;
    }

    @Override
    public boolean delete(Long id) {
        nasabahDao.delete(id);
        return true;
    }

    @Override
    public List<Nasabah> getAll() {
        return nasabahDao.getAll();
    }

    @Override
    public Nasabah getById(Long id) {
        return nasabahDao.getById(id);
    }

    @Override
    public int compareTo(Nasabah object1, Nasabah object2) {
        if(object1.getUserName().equals(object2.getUserName())
           && object1.getPassword().equals(object2.getPassword())){
            return 0;
        }
        return 1;
    }
    
    private static class ServiceNasabahHolder{
        private static final NasabahService INSTANCE = new NasabahService();
    }
}
