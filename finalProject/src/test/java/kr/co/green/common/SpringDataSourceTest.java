package kr.co.green.common;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class SpringDataSourceTest {

	@Autowired
	private ApplicationContext ac ;
	
	@Test
	public void 데이터베이스_연동_테스트() {
	
		DataSource ds = (DataSource)ac.getBean("dataSource");
		
		try {
			System.out.println(ds.getConnection());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
