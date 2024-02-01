package kr.co.green.card.controller;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.green.card.model.service.CardService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
									"file:src/main/webapp/WEB-INF/spring/root-context.xml"}) 
public class CardTest {

	@Autowired
	private CardService cardService;

	@Test
	public void submitApplicationTest() {
		int result = cardService.cardApply(1, "green", "ds1", "yoonje", "안양시");
		Assert.assertTrue(result > 0);
	}

}
