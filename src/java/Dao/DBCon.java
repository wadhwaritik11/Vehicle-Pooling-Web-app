package Dao;
import java.sql.Connection;
import java.sql.DriverManager;
public class DBCon
{
	static Connection con;
	public static Connection getConnection(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbpool", "root","Lifebegins@2801");
		}catch(Exception e){
			//e.printStackTrace();
                        System.out.print(e);
		}
	return con;
	}
}