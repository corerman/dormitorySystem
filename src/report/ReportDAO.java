package report;

import hi.BaseHibernateDAO;
import java.util.List;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for
 * Report entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see report.Report
 * @author MyEclipse Persistence Tools
 */

public class ReportDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory.getLogger(ReportDAO.class);
	// property constants
	public static final String SUSHELOU = "sushelou";
	public static final String SUSHE_ID = "susheId";
	public static final String REPORTINFO = "reportinfo";

	public void save(Report transientInstance) {
		log.debug("saving Report instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Report persistentInstance) {
		log.debug("deleting Report instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Report findById(java.lang.Integer id) {
		log.debug("getting Report instance with id: " + id);
		try {
			Report instance = (Report) getSession().get("report.Report", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Report instance) {
		log.debug("finding Report instance by example");
		try {
			List results = getSession().createCriteria("report.Report").add(
					Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Report instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Report as model where model."
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

	public List findBySusheId(Object susheId) {
		return findByProperty(SUSHE_ID, susheId);
	}

	public List findByReportinfo(Object reportinfo) {
		return findByProperty(REPORTINFO, reportinfo);
	}

	public List findAll() {
		log.debug("finding all Report instances");
		try {
			String queryString = "from Report";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Report merge(Report detachedInstance) {
		log.debug("merging Report instance");
		try {
			Report result = (Report) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Report instance) {
		log.debug("attaching dirty Report instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Report instance) {
		log.debug("attaching clean Report instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}