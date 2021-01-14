package mypack;
import java.sql.*;
import java.util.Collection;

public class BookDB {
	
	private String dbUrl = "jdbc:mysql://49.232.58.199:3306/BookDB?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
	//private String dbUrl = "jdbc:mysql://localhost:3306/BookDB?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
	private String dbUser="dbuser";
	private String dbPwd = "1234";
	private String driveName="com.mysql.cj.jdbc.Driver";
	
	public BookDB() throws Exception
	{
		Connection  conn = null;
		Statement stmt = null;
		Class.forName("com.mysql.cj.jdbc.Driver");
		//conn = DriverManager.getConnection(dbUrl,dbUser,dbPwd);
		System.out.println("11111111111111111111");
	}
	
	
//Test 原因是Tomcat无法找到mysql-connet包
//	public static void main(String []args) {
//		try {
//			BookDB db = new BookDB();
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//	}

	public Connection getConnection() throws Exception{
		
		return DriverManager.getConnection(dbUrl,dbUser,dbPwd);
		
	}
	
	public void closeConnection(Connection con) {
		
	}
	
	public void closePrepStmt(PreparedStatement prepStmt) {
		
	}
	
	public void closeResultSet(ResultSet rs) {
		
	}
	
	public int getNumberofBooks() throws Exception{
		return 0;
		
	}
	
	public Collection getBooks() throws Exception{
		return null;
		
	}
	
	public BookDetails getBookDetails(String bookId) throws Exception{
		return null;
		
	}
	
	public void buyBooks(ShoppingCar cart)throws Exception{
		
	}
	
	public void buBook(String BookId,int quantity,Connection con)throws Exception{
		
	}
	

}
