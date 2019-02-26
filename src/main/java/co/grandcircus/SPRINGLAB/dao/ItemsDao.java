package co.grandcircus.SPRINGLAB.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import org.springframework.stereotype.Repository;

import co.grandcircus.SPRINGLAB.Item;



@Repository
@Transactional
public class ItemsDao {


		@PersistenceContext
		private EntityManager em;
		
		
		public List<Item> findAll()
		   {
		       // BeanPropertyRowMapper uses the rows from the SQL result create
		       // new Room objects and fill in the values by calling the setters.
		       // Use .query for SQL SELECT statements.

		       return em.createQuery("FROM Item", Item.class).getResultList();
		   }
		
		
		
		

		public Item findByName(String name) {
			// getSingleResult finds a single matching row rather than a list of results.
			// But if it doesn't find one, it throws a NoResultException.
			try {
				return em.createQuery("FROM User WHERE name = :name", Item.class).setParameter("name", name)
						.getSingleResult();
			} catch (NoResultException ex) {
				return null;
			}
		}

		public void create(Item items) {
			em.persist(items);
		}

		public void delete(Long id) {
			// Deleting with Hibernate entity manager requires fetching a reference first.
			Item item = em.getReference(Item.class, id);
			em.remove(item);
		}
		public void edit(Item item) {
			em.merge(item);
		}
		public Item findById(Long id) {
			return em.find(Item.class, id);
		}
}

