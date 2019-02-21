package co.grandcircus.SPRINGLAB.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import co.grandcircus.SPRINGLAB.User;
@Repository
//DAOs must be transactional in order to use the EntityManager to write.
//This means that a transaction is created every time a method runs here.
@Transactional

public class UserDao {

	@PersistenceContext
	private EntityManager em;

	public User findByName(String name) {
		// getSingleResult finds a single matching row rather than a list of results.
		// But if it doesn't find one, it throws a NoResultException.
		try {
			return em.createQuery("FROM User WHERE name = :name", User.class).setParameter("name", name)
					.getSingleResult();
		} catch (NoResultException ex) {
			return null;
		}
	}

	public void create(User user) {
		em.persist(user);
	}

}
