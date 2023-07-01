package cm.servelets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.factoryProvider;


public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     try {
	    	 //title, content fetch
	    	 String title=request.getParameter("title");
	    	 String Content=request.getParameter("content");
	    	 Note note=new Note(title,Content,new Date());
	    	 //System.out.print(note.getId()+":"+ note.getContent());
	    	 Session s=factoryProvider.getFactory().openSession();
	    	 Transaction tx=s.beginTransaction();
	    	 s.save(note);
	    	 tx.commit();
	    	 s.close();
	    	 response.setContentType("text/html");
	    	 PrintWriter out=response.getWriter();
	    	 out.println("<h1 style='text-align:center;'>Note is added successfully</h1>");
	    	 out.println("<h1 style='text-align:center;'><a href='all_notes.jsp'>View all notes</a></h1>");

	    	 
	     }catch(Exception e) {
	    	 e.printStackTrace();
	     }
	}

}
