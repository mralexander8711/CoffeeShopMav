package co.grandcircus.SPRINGLAB.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

import co.grandcircus.SPRINGLAB.Items;


public class ItemsDao {


		@PersistenceContext
		private EntityManager em;

		public Items findByName(String name) {
			// getSingleResult finds a single matching row rather than a list of results.
			// But if it doesn't find one, it throws a NoResultException.
			try {
				return em.createQuery("FROM User WHERE name = :name", Items.class).setParameter("name", name)
						.getSingleResult();
			} catch (NoResultException ex) {
				return null;
			}
		}

		public void create(Items items) {
			em.persist(items);
		}
	
}
