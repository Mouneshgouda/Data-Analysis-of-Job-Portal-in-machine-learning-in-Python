package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.PrintWriter;

import Dao.JobServiceImp;
import Model.Search;

/**
 * Servlet implementation class Searchcontroller
 */
@WebServlet(name = "SearchController", urlPatterns = { "/SearchController" })
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Search jobsearch=new Search();

PrintWriter out = response.getWriter();
String search = request.getParameter("select");
jobsearch.setSearch(search);

System.out.println("\n"+jobsearch);
JobServiceImp jobServiceImp = new  JobServiceImp();
	int status = jobServiceImp.jobsearch(search);
	System.out.println("result:"+status);
	if (status > 0) {
		String message = "store";
		System.out.println("done");
		 response.getWriter().write(message);
			/*
			 * System.out.println("done"); response.sendRedirect("/sciiproject1/home.jsp");
			 */

	} else {
		String message = "not store";
		System.out.println("not done");
		 response.getWriter().write(message);
		/*
		 * System.out.println(" not done");
		 * response.sendRedirect("/sciiproject1/projectRegistration.jsp");
		 */
	}

	out.close();	
}
}
		