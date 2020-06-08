package com.gurada.basic;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gurada.infa.ManagerService;

@Controller
public class ManagementController {
	@Autowired
	private ManagerService service;
	
	//일별 판매량 남자, 여자 ,총계 차트 출력 데이터
	@RequestMapping(value = "/test.do")
	public String saleCostView(Model model) {
		List list = service.getSaleCost();
		StringBuffer sendData = new StringBuffer();
		for(int i= 0 ; i<list.size();i++)
		{
			StringBuffer tmpStr = new StringBuffer();
			HashMap map = (HashMap)list.get(i);
			StringTokenizer st = new StringTokenizer((String)map.get("ORDER_DATE"),"-");
			tmpStr.append("eval(dataRow = [new Date(");
			tmpStr.append("\'"+st.nextToken()+"\', \'"+(Integer.parseInt(st.nextToken())-1)+"\',\'"+st.nextToken()+"\',\'8\'),");
			tmpStr.append((BigDecimal)map.get("MAN_COST")+","+(BigDecimal)map.get("WOMAN_COST")+","+(BigDecimal)map.get("TOTAL_COST")+"]);\n");
			tmpStr.append("eval(data.addRow(dataRow));\n");
			sendData.append(tmpStr);
		}
		//자바스크립트에서 사용할 stmpStr
		//tmpStr => eval(DataRow = [new Date('2020','05','09','08'),남자총계,여자총계,합계]);
		//			eval(data.daaRow(dataRow));
		//			Chart.jsp에서 사용
		//System.out.println(sendData);
		model.addAttribute("chartData", sendData);
		return "Chart";
	}
}
