package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Visit;



/**
 * Servlet implementation class VisitController
 */
@WebServlet("/VisitController")
public class VisitController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Visit visit = new Visit();
		PrintWriter out = response.getWriter();
		
		String VisitCount = request.getParameter("a");
		System.out.println("\n1"+VisitCount);
		String VisitCount1 = request.getParameter("visitCount");
		System.out.println("\n2"+VisitCount1);
		visit.setVisitcount(VisitCount);
		/*
		 * project.setpname(VisitCount1);
		 */

		/*
		 * EmployeeServiceImp employeeServiceImp = new EmployeeServiceImp(); int status
		 * = employeeServiceImp.project(project);
		 */int status=1;
			if (status > 0) {
				String message = "visit";
				System.out.println("done");
				 response.getWriter().write(message);
					/*
					 * System.out.println("done"); response.sendRedirect("/sciiproject1/home.jsp");
					 */

			} else {
				String message = "not visit";
				System.out.println("done");
				 response.getWriter().write(message);
				/*
				 * System.out.println(" not done");
				 * response.sendRedirect("/sciiproject1/projectRegistration.jsp");
				 */
			}

			out.close();	
	}
}
