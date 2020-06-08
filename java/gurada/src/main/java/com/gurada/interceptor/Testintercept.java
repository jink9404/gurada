package com.gurada.interceptor;

import java.io.File;
import java.io.FileWriter;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.gurada.domain.MemberVO;



/*		HTTP Intercept 양식
 *		servlet-context.xml도 수정이 필요함.
 */
public class Testintercept extends HandlerInterceptorAdapter{
	private static final Logger logger = LoggerFactory.getLogger(Testintercept.class);
	
/*		
 * 컨트롤러 실행 전 에 수행	
 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
		logger.info("preHandle call...");
		if(handler instanceof HandlerMethod){
			
			HandlerMethod method = (HandlerMethod) handler;
			HttpSession session = request.getSession();
			
			MemberVO loginInfo =(MemberVO)session.getAttribute("UserIDInfo");
			Calendar cal = Calendar.getInstance();
			File logFile = new File(cal.get(Calendar.YEAR)+"-"+(cal.get(Calendar.MONTH)+1)+"-"+cal.get(Calendar.DATE)+"-access_info.log");
			try(FileWriter writer =new FileWriter(logFile,true)){
				if(loginInfo != null) {
				String message =loginInfo.getEmail()+
								"," + request.getRemoteAddr() +
								","+ cal.getTime().toString() +
								","+ request.getRequestURI() +"?"+request.getQueryString()+
								"\n";
				
				writer.write(message);
				System.out.println(message);
				writer.flush();
				}
			}
	
		}
		
		return  true;
	}
 
	
	
/*		
 * 		컨트롤러 실행 직 후 수행	
 
	@Override 
	public void postHandle(	HttpServletRequest request, HttpServletResponse response, 
							Object handler, ModelAndView modelAndView) throws Exception {
		logger.info("postHandle call......");
	}
 */
	
	
/*		
 * 		View 렌더링 완료시점 수행

	@Override 
	public void afterCompletion(	HttpServletRequest request, HttpServletResponse response,
									Object handler, Exception ex) throws Exception {
		logger.info("afterCompletion call......"); 
	}
 */
	
	
/*		
 * 		비동기 호출시 수행

	@Override 
	public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, 
												Object handler) throws Exception {
	}
 */
	
}
