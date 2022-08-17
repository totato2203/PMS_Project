package pms.a01_Jongdae.a01_Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pms.a01_Jongdae.a02_Service.CostNScopeService;
import pms.a01_Jongdae.a04_VO.CostPrj;

@Controller
public class CostNScopeController {
	@Autowired(required = false)
	private CostNScopeService service;
	
	// http://localhost:7080/pms/cosPrjList.do
	@RequestMapping("cosPrjList.do")
	public String cosPrjList(CostPrj sch, Model d) {
		d.addAttribute("costPrjList", service.getPrjList(sch));
		return "WEB-INF\\views\\a01_Jongdae\\costProjectList_backup.jsp";
	}
	
	/*
	// http://localhost:7080/pms/cosPrjList.do
	@RequestMapping("cosPrjList.do")
	public String cosPrjList() {
		return "WEB-INF\\views\\a01_Jongdae\\costProjectList.jsp";
		// return "WEB-INF\\views\\a01_Jongdae\\test.jsp";
	}
	
	// http://localhost:7080/pms/ajaxCostPrj.do
	@RequestMapping("ajaxCostPrj.do")
	public String ajaxCostPrj(CostPrj sch, Model d) {
		d.addAttribute("costPrjList", service.getPrjList(sch));
		return "pageJsonReport";
	}
	
	// http://localhost:7080/pms/ajaxHcost.do
	@RequestMapping("ajaxHcost.do")
	public String ajaxHcost(HCost hc, Model d) {
		d.addAttribute("hcList", service.getHCostList(hc));
		return "pageJsonReport";
	}
	*/
	
	
	// http://localhost:7080/pms/rmList.do
	// http://localhost:7080/pms/rmList.do?prjno=P1000
	@RequestMapping("rmList.do")
	public String cost(String prjno, Model d) {
		d.addAttribute("rmList", service.getRoadMapList(prjno));
		d.addAttribute("prjhcostlist", service.getPrjHCostList(prjno));
		d.addAttribute("prjcost", service.getPrj(prjno));
		return "WEB-INF\\views\\a01_Jongdae\\costRoadMapList.jsp";
	}
	// http://localhost:7080/pms/scope.do?prjno=P1000
	@RequestMapping("scope.do")
	public String scopeInvoice(String prjno, Model d) {
		d.addAttribute("PMInfo", service.getPMInfo(prjno));
		d.addAttribute("scInfo", service.getScInfo(prjno));
		d.addAttribute("rmList", service.getScRMList(prjno));
		d.addAttribute("prjInfo", service.getScPrj(prjno));
		d.addAttribute("hcostsum", service.getHCostSum(prjno));
		return "WEB-INF\\views\\a01_Jongdae\\scopeDocumentation_invoice.jsp";
	}
	// 범위 기술서 승인, 반려
	@RequestMapping("yesScopeStmt.do")
	public String yesScopeStmt(String scpStmtNo, Model d) {
		service.yesScopeStmt(scpStmtNo);
		d.addAttribute("proc", "upt"); 
		return "WEB-INF\\views\\a01_Jongdae\\scopeDocumentation_invoice.jsp";
	}
	@RequestMapping("noScopeStmt.do")
	public String noScopeStmt(String scpStmtNo, Model d) {
		service.noScopeStmt(scpStmtNo);
		d.addAttribute("proc", "del");
		return "WEB-INF\\views\\a01_Jongdae\\scopeDocumentation_invoice.jsp";
	}
	
	// 위험 관리 페이지
	// http://localhost:7080/pms/risk.do
	@RequestMapping("risk.do")
	public String risk() {
		return "WEB-INF\\views\\a01_Jongdae\\risk.jsp";
	}

}
