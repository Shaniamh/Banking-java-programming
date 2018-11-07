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
import model.KartuATM;

/**
 *
 * @author ASUS
 */
public class KartuATMDao implements DaoApp<KartuATM, Long> {

    @Override
    public void save(KartuATM kartu) {
        EntityManagerFactory enfactory = Persistence.createEntityManagerFactory
                                                    ("persistance");
        EntityManager entitymanager    = enfactory.createEntityManager();
        entitymanager.getTransaction().begin();
        entitymanager.persist(kartu);
        entitymanager.getTransaction().commit();
        entitymanager.close();
        enfactory.close();
    }

    @Override
    public void update(KartuATM kartu, Long id) {
        EntityManagerFactory enfactory = Persistence.createEntityManagerFactory
                                                     ("persistance");
        EntityManager entitymanager    = enfactory.createEntityManager();
        entitymanager.getTransaction().begin();
        KartuATM editNasabah           = entitymanager.find(KartuATM.class, id);
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
        KartuATM kartu                 = entitymanager.find(KartuATM.class, id);
        entitymanager.remove(kartu);
        entitymanager.getTransaction().commit();
        entitymanager.close();
        enfactory.close();
    }

    @Override
    public List<KartuATM> getAll() {
        EntityManagerFactory enfactory = Persistence.createEntityManagerFactory
                                                     ("persistance");
        EntityManager entitymanager    = enfactory.createEntityManager();
        CriteriaBuilder cb             = entitymanager.getCriteriaBuilder();
        CriteriaQuery<KartuATM> cq     = cb.createQuery(KartuATM.class);
        Root<KartuATM> rootEntry       = cq.from(KartuATM.class);
        CriteriaQuery<KartuATM> all    = cq.select(rootEntry);
        TypedQuery<KartuATM> allQuery  = entitymanager.createQuery(all);
        return allQuery.getResultList();
    }

    @Override
    public KartuATM getById(Long id) {
        EntityManagerFactory enfactory = Persistence.createEntityManagerFactory
                                                     ("persistance");
        EntityManager entitymanager    = enfactory.createEntityManager();
        entitymanager.getTransaction().begin();
        KartuATM kartu                 = entitymanager.find(KartuATM.class, id);
        return kartu;
    }
}
