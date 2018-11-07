/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services.admin;


import dao.impl.KartuATMDao;
import java.util.List;
import model.KartuATM;

/**
 *
 * @author ASUS
 */
public class KartuATMService implements adminService<KartuATM, Long> {
    KartuATMDao kartuDao;
    
    public KartuATMService(){
        kartuDao = new KartuATMDao();
    }
    
    public static KartuATMService getInstance(){
        return ServiceKartuHolder.INSTANCE;
    }

    @Override
    public boolean register(KartuATM object) {
        kartuDao.save(object);
        return true;
    }

    @Override
    public KartuATM login(KartuATM object) {
        List<KartuATM> ln = kartuDao.getAll();
        for(KartuATM k:ln){
            if(compareTo(object,k) == 0) {
                return k;
            }
        }
        return null;
    }

    @Override
    public boolean update(KartuATM object, Long id) {
        kartuDao.update(object, id);
        return true;
    }

    @Override
    public boolean delete(Long id) {
        kartuDao.delete(id);
        return true;
    }

    @Override
    public List<KartuATM> getAll() {
        return kartuDao.getAll();
    }

    @Override
    public KartuATM getById(Long id) {
        return kartuDao.getById(id);
    }

    @Override
    public int compareTo(KartuATM object1, KartuATM object2) {
        if(object1.getNoKartu().equals(object2.getNoKartu())
           && object1.getPIN().equals(object2.getPIN())){
            return 0;
        }
        return 1;
    }
    
    private static class ServiceKartuHolder{
        private static final KartuATMService INSTANCE = new KartuATMService();
    }
}
