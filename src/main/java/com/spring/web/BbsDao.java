package com.spring.web;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BbsDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<BbsVo> boardlistmain() {
		return sqlSession.selectList("springtest.listAll");
	}
	
	public int addInfo(BbsVo vo){
		int res=sqlSession.insert("springtest.insert",vo);
		System.out.println(res+"�� �߰� �Ϸ�");
		return res;
	}
	
	public int removeInfo(String empno){
		int res=sqlSession.delete("springtest.delete",empno);
		System.out.println(res+"�� ���� �Ϸ�");
		return res;
	}
	
	
}
