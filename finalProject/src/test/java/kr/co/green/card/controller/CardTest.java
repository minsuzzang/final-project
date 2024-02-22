//package kr.co.green.card.controller;
//
//import static org.junit.Assert.assertEquals;
//import static org.junit.Assert.assertNotNull;
//
//import java.util.Optional;
//
//import org.junit.Before;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.mock.web.MockHttpServletRequest;
//import org.springframework.mock.web.MockHttpSession;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//import org.springframework.ui.ExtendedModelMap;
//import org.springframework.ui.Model;
//import org.springframework.web.servlet.mvc.support.RedirectAttributes;
//import org.springframework.web.servlet.mvc.support.RedirectAttributesModelMap;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
//									"file:src/main/webapp/WEB-INF/spring/root-context.xml",
//									"file:src/main/webapp/WEB-INF/spring/appServlet/security-context.xml"
//									})
//public class CardTest {
//
//	@Autowired
//	private CardController cardController;
//
//	private Model model;
//	private MockHttpServletRequest request;
//	private MockHttpSession session;
//	private RedirectAttributes redirectAttributes;
//	
//	@Before
//	public void setup() {
//		this.model = new ExtendedModelMap();
//		this.request = new MockHttpServletRequest();
//		this.session = new MockHttpSession();
//		this.request.setSession(this.session);
//		this.redirectAttributes = new RedirectAttributesModelMap();
//	}
//	
//	@Test
//	public void testCardApplyForm() throws Exception {
//		session.setAttribute("m_idx", 1);
//		String viewName = cardController.cardApplyForm(1, redirectAttributes);
//		assertEquals("card/apply/cardApply", viewName);
//	}
//
//	@Test
//	public void testSelectColor() throws Exception {
//		String viewName = cardController.selectColor(Optional.of("Red"));
//		assertEquals("card/detail/redDetail", viewName);
//	}
//
//	@Test
//	public void testDesign() throws Exception {
//		String viewName = cardController.design(Optional.of("red"));
//		assertEquals("card/select/redSelect", viewName);
//	}
//
//	@Test
//	public void testCardApplyResult() throws Exception {
//		session.setAttribute("cd_color", "red");
//		session.setAttribute("cd_design", "1");
//		String viewName = cardController.cardApplyResult(model);
//		assertEquals("card/result/cardApplyResult", viewName);
//		session.removeAttribute("cd_color");
//		session.removeAttribute("cd_design");
//	}
//
//	
//	@Test
//	public void testSetCardInfo() throws Exception {
//	    // 세션에 필요한 속성 설정
//	    session.setAttribute("m_idx", 1);  // 테스트할 인덱스 값 설정
//
//	    // 메소드 호출
//	    String viewName = cardController.setCardInfo(1, model);
//
//	    // 결과 검증
//	    assertEquals("card/result/setCardInfo", viewName);
//
//	    // Model에 추가된 속성 검증
//	    assertNotNull(model.getAttribute("cards"));
//	    assertNotNull(model.getAttribute("jsonCards"));
//	}
//	
//	
//	
//	
//}