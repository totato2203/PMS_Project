package pms.a01_Haeun.a01_Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pms.a01_Haeun.a02_Service.ProjectService;
import pms.a01_Haeun.a04_VO.Project;


@Controller
public class ProjectController {
	@Autowired(required = false)
	private ProjectService service;

	// 프로젝트리스트
	// http://106.10.18.69:3030/pms/prjList.do
	//http://localhost:7080/pms/prjList.do
	@RequestMapping("prjList.do")
	public String prjList(Project sch, Model d) {
		System.out.println("test");
		d.addAttribute("prjList", service.getProjectList(sch));
		System.out.println("test2");
		return "WEB-INF\\views\\a01_Haeun\\c01_projectList.jsp";
	}	
	
	// 프로젝트 등록 form
	// http://106.10.18.69:5050/pms/prjInsertForm.do
	// http://localhost:7080/pms/prjInsertForm.do
	@RequestMapping("prjInsertForm.do")
	public String prjInsertForm() {
		System.out.println("등록 시도");
		return "WEB-INF\\views\\a01_Haeun\\c03_prjInsertTest.jsp";
	}
	@RequestMapping("prjInsert.do")
	public String prjInsert(Project ins, Model d) {
		System.out.println("등록:"+ins.getPrjName());
		service.insertPrj(ins);
		d.addAttribute("isInsert", "Y");
		return "WEB-INF\\views\\a01_Haeun\\c03_prjInsertTest.jsp";
	}
	// http://localhost:7080/pms/prjCalendar.do
	// 캘린더로 이동
	@RequestMapping("prjCalendar.do")
	public String prjCalendar(@RequestParam("prjNo") String prjNo, Model d) {
		System.out.println(prjNo);
		d.addAttribute("prj", service.getPrjCalendar(prjNo));
		return "WEB-INF\\views\\a01_Haeun\\b01_fullcalendar.jsp";
	}
	
	
}
