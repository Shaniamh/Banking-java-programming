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
import model.Nasabah;

/**
 *
 * @author ASUS
 */
public class NasabahDao implements DaoApp<Nasabah , Long>{

    @Override
    public void save(Nasabah nasabah) {
        EntityManagerFactory enfactory = Persistence.createEntityManagerFactory
                                                    ("persistance");
        EntityManager entitymanager    = enfactory.createEntityManager();
        entitymanager.getTransaction().begin();
        entitymanager.persist(nasabah);
        entitymanager.getTransaction().commit();
        entitymanager.close();
        enfactory.close();
    }

    @Override
    public void update(Nasabah nasabah, Long id) {
        EntityManagerFactory enfactory = Persistence.createEntityManagerFactory
                                                     ("persistance");
        EntityManager entitymanager    = enfactory.createEntityManager();
        entitymanager.getTransaction().begin();
        Nasabah editNasabah = entitymanager.find(Nasabah.class, id);
        editNasabah.setUserName(nasabah.getUserName());
        editNasabah.setPassword(nasabah.getPassword());
        entitymanager.getTransaction().commit();
        entitymanager.close();
        enfactory.close();
    }

    @Override
    public void delete(Long id) {
        EntityManagerFactory enfactory = Persistence.createEntityManagerFactory
                                                     ("persistance");
        EntityManager entitymanager    = enfactory.createEntityManager();
        entitymanager.getTransaction().begin();
        Nasabah nasabah = entitymanager.find(Nasabah.class, id);
        entitymanager.remove(nasabah);
        entitymanager.getTransaction().commit();
        entitymanager.close();
        enfactory.close();
    }

    @Override
    public List<Nasabah> getAll() {
        EntityManagerFactory enfactory = Persistence.createEntityManagerFactory
                                                    ("persistance");
        EntityManager entitymanager    = enfactory.createEntityManager();
        CriteriaBuilder cb             = entitymanager.getCriteriaBuilder();
        CriteriaQuery<Nasabah> cq      = cb.createQuery(Nasabah.class);
        Root<Nasabah> rootEntry        = cq.from(Nasabah.class);
        CriteriaQuery<Nasabah> all     = cq.select(rootEntry);
        TypedQuery<Nasabah> allQuery   = entitymanager.createQuery(all);
        return allQuery.getResultList();
    }

    @Override
    public Nasabah getById(Long id) {
        EntityManagerFactory enfactory = Persistence.createEntityManagerFactory
                                                    ("persistance");
        EntityManager entitymanager    = enfactory.createEntityManager();
        entitymanager.getTransaction().begin();
        Nasabah nasabah = entitymanager.find(Nasabah.class, id);
        return nasabah;
    }
}
