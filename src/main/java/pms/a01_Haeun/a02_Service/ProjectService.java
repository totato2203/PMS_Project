package pms.a01_Haeun.a02_Service;
//private ProjectDao daoProject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pms.a01_Haeun.a03_DAO.ProjectDao;
import pms.a01_Haeun.a04_VO.Calendar;
import pms.a01_Haeun.a04_VO.Project;

@Service
public class ProjectService {
	@Autowired(required=false)
	private ProjectDao daoPRJ;
	
	// 프로젝트 조회
	public List<Project> getProjectList(Project sch){
		return daoPRJ.getProjectList(sch);
	}	
	// 프로젝트 등록
	public void insertPrj(Project ins) {
		daoPRJ.insertProject(ins);
	}	
	// 프로젝트 캘린더
	public List<Calendar> getPrjCalendar(String prjNo) {
		return daoPRJ.getPrjCalendar(prjNo);
	}
	
}
