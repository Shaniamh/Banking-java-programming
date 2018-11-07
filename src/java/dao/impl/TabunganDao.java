/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import dao.DaoApp;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import model.Tabungan;

/**
 *
 * @author ASUS
 */
public class TabunganDao implements DaoApp<Tabungan , Long>{

    @Override
    public void save(Tabungan tabungan) {
        EntityManagerFactory enfactory = Persistence.
                createEntityManagerFactory("persistance");
        EntityManager entitymanager = enfactory.createEntityManager();
        entitymanager.getTransaction().begin();
        entitymanager.persist(tabungan);
        entitymanager.getTransaction().commit();
        entitymanager.close();
        enfactory.close();
    }

    @Override
    public void update(Tabungan t, Long id) {
        EntityManagerFactory enfactory = Persistence.createEntityManagerFactory
                                                    ("persistance");
        EntityManager entitymanager    = enfactory.createEntityManager();
        entitymanager.getTransaction().begin();
        Tabungan editTabungan = entitymanager.find(Tabungan.class, id);
        editTabungan.setUserName(t.getUserName());
        editTabungan.setPassword(t.getPassword());
        editTabungan.setSaldo(t.getSaldo());
        editTabungan.setRekening(t.getRekening());
        entitymanager.getTransaction().commit();
        entitymanager.close();
        enfactory.close();
    }

    @Override
    public void delete(Long id) {
        EntityManagerFactory enfactory = Persistence.
                createEntityManagerFactory("persistance");
        EntityManager entitymanager    = enfactory.createEntityManager();
        entitymanager.getTransaction().begin();
        Tabungan tabungan              = entitymanager.find(Tabungan.class, id);
        entitymanager.remove(tabungan);
        entitymanager.getTransaction().commit();
        entitymanager.close();
        enfactory.close();
    }

    @Override
    public List<Tabungan> getAll() {
        EntityManagerFactory enfactory = Persistence.createEntityManagerFactory
                                                    ("persistance");
        EntityManager entitymanager    = enfactory.createEntityManager();
        CriteriaBuilder cb             = entitymanager.getCriteriaBuilder();
        CriteriaQuery<Tabungan> cq     = cb.createQuery(Tabungan.class);
        Root<Tabungan> rootEntry       = cq.from(Tabungan.class);
        CriteriaQuery<Tabungan> all    = cq.select(rootEntry);
        TypedQuery<Tabungan> allQuery  = entitymanager.createQuery(all);
        return allQuery.getResultList();
    }

    @Override
    public Tabungan getById(Long id) {
        EntityManagerFactory enfactory = Persistence.createEntityManagerFactory
                                                    ("persistance");
        EntityManager entitymanager    = enfactory.createEntityManager();
        entitymanager.getTransaction().begin();
        Tabungan tabungan              = entitymanager.find(Tabungan.class, id);
        return tabungan;
    }
}
