/**
 * 
 */
package Services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 * @author Izmil
 *
 */
public class AdminLoginService {
	private static final EntityManagerFactory ENTITY_MANAGER_FACTORY = Persistence
			.createEntityManagerFactory("JDBC_LOCAL");

	public boolean isValidUser(String username, String password) {
		EntityManager em = ENTITY_MANAGER_FACTORY.createEntityManager();
		EntityTransaction transaction = null;
		boolean result = false;

		try {
			transaction = em.getTransaction();
			transaction.begin();

			Query query = em.createQuery("SELECT u from AdminDetails u where u.username= :username and u.password= :password");
			query.setParameter("username", username);
			query.setParameter("password", password);

			List users = query.getResultList();

			result = (users.size() > 0) ? true : false;
			transaction.commit();

		} catch (Exception ex) {
			// If there are any exceptions, roll back the changes
            if (transaction != null) {
                transaction.rollback();
            }
            // Print the Exception
            ex.printStackTrace();
		} finally {
			em.close();
		}

		return result;
	}

}
