package livingClean;

import hi.BaseHibernateDAO;
import java.util.List;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for
 * LivingClean entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see livingClean.LivingClean
 * @author MyEclipse Persistence Tools
 */

public class LivingCleanDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory
			.getLogger(LivingCleanDAO.class);
	// property constants
	public static final String SUSHELOU = "sushelou";
	public static final String GOODLEVEL = "goodlevel";
	public static final String MIDLEVEL = "midlevel";
	public static final String BADLEVEL = "badlevel";

	public void save(LivingClean transientInstance) {
		log.debug("saving LivingClean instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(LivingClean persistentInstance) {
		log.debug("deleting LivingClean instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public LivingClean findById(java.lang.Integer id) {
		log.debug("getting LivingClean instance with id: " + id);
		try {
			LivingClean instance = (LivingClean) getSession().get(
					"livingClean.LivingClean", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(LivingClean instance) {
		log.debug("finding LivingClean instance by example");
		try {
			List results = getSession().createCriteria(
					"livingClean.LivingClean").add(Example.create(instance))
					.list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding LivingClean instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from LivingClean as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findBySushelou(Object sushelou) {
		return findByProperty(SUSHELOU, sushelou);
	}

	public List findByGoodlevel(Object goodlevel) {
		return findByProperty(GOODLEVEL, goodlevel);
	}

	public List findByMidlevel(Object midlevel) {
		return findByProperty(MIDLEVEL, midlevel);
	}

	public List findByBadlevel(Object badlevel) {
		return findByProperty(BADLEVEL, badlevel);
	}

	public List findAll() {
		log.debug("finding all LivingClean instances");
		try {
			String queryString = "from LivingClean";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public LivingClean merge(LivingClean detachedInstance) {
		log.debug("merging LivingClean instance");
		try {
			LivingClean result = (LivingClean) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(LivingClean instance) {
		log.debug("attaching dirty LivingClean instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(LivingClean instance) {
		log.debug("attaching clean LivingClean instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}