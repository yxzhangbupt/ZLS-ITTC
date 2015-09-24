package com.water.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.water.dao.DataAnalysisDao;
import com.water.beans.DataAnalysis;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * 接口实现类
 * 
 * @author miao
 * 
 */
public class DataAnalysisDaoImpl extends HibernateDaoSupport implements DataAnalysisDao {

	@SuppressWarnings("unchecked")
	public List<DataAnalysis> find() {
//		List list = null;
//		String sql="from  DataAnalysis";
//		try{
//			list=getHibernateTemplate().find(sql);
//		} catch (DataAccessException ex) {
//			ex.printStackTrace();
//		}
//		return list;
		DetachedCriteria criteria = DetachedCriteria.forClass(DataAnalysis.class);
		criteria.addOrder(Order.desc("id"));
		return super.getHibernateTemplate().findByCriteria(criteria);
	}

	public int add(DataAnalysis dataAnalysis) {
		try{
			this.getHibernateTemplate().save(dataAnalysis);
			return 1;
		}catch (DataAccessException ex){
			ex.printStackTrace();
			return 0;
		}
	}

	public int delete(long id) {
		try{
			this.getHibernateTemplate().delete(findById(id));
			return 1;
		}catch (DataAccessException ex){
			ex.printStackTrace();
			return 0;
		}
	}

	public DataAnalysis findById(long id) {
		try{
			DataAnalysis dataAnalysis=(DataAnalysis) getHibernateTemplate().get(DataAnalysis.class, id);
			return dataAnalysis;
		}catch (DataAccessException ex) {
			ex.printStackTrace();
		}
		return null;
	}

	public int update(DataAnalysis dataAnalysis) {
		try{
			this.getHibernateTemplate().update(dataAnalysis);
			return 1;
		}catch (DataAccessException ex){
			ex.printStackTrace();
			return 0;
		}
		
	}

	public long findTotal() {

		return this.find().size();
	}

	/**
	 * 查询一页的数据
	 * 
	 * @param begin 从哪条开始0
	 * @param end 得到多少条
	 * @param sort 排序字段
	 * @param order 升序或降序 desc/asc
	 */
	@SuppressWarnings("unchecked")
	public List<DataAnalysis> findPages(final int begin, final int end, final String sort,
			final String order) {
		// 当要用到原生的Hibernate的Session的时候，这种最灵活，可以使用Query和Criteria，不用着急管理会话和事
		return super.getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				Criteria criteria = session.createCriteria(DataAnalysis.class);
				if ("desc".equals(order)) {
					criteria.addOrder(Order.desc(sort));
				} else {
					criteria.addOrder(Order.asc(sort));
				}
				criteria.setFirstResult(begin).setMaxResults(end);
				return criteria.list();
			}
		});
	}
	
	public List<DataAnalysis> findBySql(String sql){
			List list = null;
			try{
				list = getHibernateTemplate().find(sql);
			} catch (DataAccessException ex) {
				ex.printStackTrace();
			}
			return list;
			
			
	}

}