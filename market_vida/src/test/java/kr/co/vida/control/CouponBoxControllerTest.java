package kr.co.vida.control;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@ExtendWith(SpringExtension.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/spring-ctx.xml"})
class CouponBoxControllerTest {
	
	private MockMvc mvc;
	
	@Autowired
	private WebApplicationContext context;
	
	
	@BeforeEach
	void setUp() throws Exception {
		log.info("MockMvc : {} ", mvc);
		log.info("context : {} ", context);
		mvc = MockMvcBuilders.webAppContextSetup(context).build();
	}

	@Test
	void test() throws Exception {
		log.info("test()");
		System.out.println("test main() ");
		
		
		log.info("test()");
		System.out.println("test main() ");
		
		ResultActions ra = mvc.perform(get("/myCoupon"));
		ResultActions ra2 = ra.andExpect(status().isOk());
		
		MvcResult mr = ra.andReturn();
		
		ModelAndView mav =mr.getModelAndView();
		
		System.out.println(mav);
		
		assertEquals("list", mav.getViewName());
		
		assertEquals("list", mvc.perform(get("/myCoupon"))
								.andExpect(status().isOk())
								.andReturn()
								.getModelAndView()
								.getViewName());
	}

}
