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
 * �ӿ�ʵ����
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
		criteria.addOrder(Order.desc("ID"));
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
	 * ��ѯһҳ�����
	 * 
	 * @param begin ��������ʼ0
	 * @param end �õ�������
	 * @param sort �����ֶ�
	 * @param order ������� desc/asc
	 */
	@SuppressWarnings("unchecked")
	public List<DataAnalysis> findPages(final int begin, final int end, final String sort,
			final String order) {
		// ��Ҫ�õ�ԭ���Hibernate��Session��ʱ��������������ʹ��Query��Criteria�������ż�����Ự����
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