package kr.co.green.card.controller;

import static org.junit.Assert.assertEquals;

import java.util.Optional;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
									"file:src/main/webapp/WEB-INF/spring/root-context.xml",
									"file:src/main/webapp/WEB-INF/spring/appServlet/security-context.xml" })
public class CardTest {

	@Autowired
	private CardController cardController;

	private Model model;
	private MockHttpServletRequest request;
	private MockHttpSession session;

	@Before
	public void setup() {
		this.model = new ExtendedModelMap();
		this.request = new MockHttpServletRequest();
		this.session = new MockHttpSession();
		this.request.setSession(this.session);
	}

	@Test
	public void testCardApplyForm() throws Exception {
		String viewName = cardController.cardApplyForm();
		assertEquals("card/apply/cardApply", viewName);
	}

	@Test
	public void testSelectColor() throws Exception {
		String viewName = cardController.selectColor(Optional.of("Red"));
		assertEquals("card/detail/redDetail", viewName);
	}

	@Test
	public void testDesign() throws Exception {
		String viewName = cardController.design(Optional.of("red"), session);
		assertEquals("card/select/redSelect", viewName);
	}

	@Test
	public void testCardApplyResult() throws Exception {
		session.setAttribute("cd_color", "red");
		session.setAttribute("cd_design", "1");
		String viewName = cardController.cardApplyResult(session, model);
		assertEquals("card/result/cardApplyResult", viewName);
	}
}