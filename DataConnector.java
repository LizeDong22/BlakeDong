package MergeData;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
 
public class DataConnector {

	public static void main(String[] args) throws Exception{
		ExcelReaderDopl x=new ExcelReaderDopl();
		x.ReadData("src/mergedata/DOPL-test.xlsx");
		//ExcelReader x1=new ExcelReader();
	//	x.ReadData("src/mergedata/DOPL-test.xlsx");
		//Accessing driver from the JAR file
		//Class.forName("com.mysql.jdbc.Driver");
		
		//Creating a variable for the connection called "con"
		//jdbc:mysql://localhost/db?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC

		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ruralhealth?serverTimezone=UTC","root","root");
		//jdbc:mysql://localhost:3306/rural health --> This is the database
		//root is the database user
		//root is the password
		
		//Here we create our query
		/*
		 * for each row in file
		 * string statement="npi add ";
		 * statement+=row[1].ToS tring(); 
		 * statement+=" ";
		 * PreparedStatement exestatement = con.prepareStatement(statement);
		 * exestatement.excuteQuery();
		 * */
		ExcelReaderNpi y=new ExcelReaderNpi();
		y.ReadData("src/mergedata/NPI-test.xlsx");
		PreparedStatement statement = con.prepareStatement("select * from npi");
		statement.executeQuery();
		PreparedStatement statement1 = con.prepareStatement("select * from dopl");
		
		//Creating a variable to execute query
		ResultSet result = statement.executeQuery();
		ResultSet result1 = statement1.executeQuery();
		
		PreparedStatement joinstatement = con.prepareStatement("create table joint as"
				+ " SELECT * FROM npi LEFT JOIN dopl ON npi.DOPL_LICENSE_NO = dopl.LICENSE_NO UNION	SELECT * FROM npi RIGHT JOIN dopl ON npi.DOPL_LICENSE_NO = dopl.LICENSE_NO");
		joinstatement.execute();
		while(result.next()) {
			System.out.println(result.getString(1) + " " + result.getString(2));
			//getString returns the data
			//1 is the first field in the table
			//2 is the second field
		}
		while(result1.next()) {
			System.out.println(result1.getString(1) + " " + result1.getString(2));
			//getString returns the data
			//1 is the first field in the table
			//2 is the second field
		}
	}

	public static void ReadData(String filepath) {
		// TODO Auto-generated method stub
		
	}
}
