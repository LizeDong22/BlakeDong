package MergeData;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

//import org.apache.poi.hssf.usermodel.XSSFSheet;
//import org.apache.poi.hssf.usermodel.XSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import org.apache.poi.ss.usermodel.DataFormatter;
public class ExcelReaderDopl{
	public ExcelReaderDopl() 
	{
		
	}
	public String GetString(Cell k) 
	{
		DataFormatter dataFormatter=new DataFormatter();
		String cellValue = dataFormatter.formatCellValue(k);
		if(cellValue=="") 
		{
			
			cellValue="NULL,";
			
		}
		else 
		{
			cellValue="'"+cellValue+"',";
		}
		return cellValue;
	}
	public void ReadData(String filepath) throws Exception {
		FileInputStream fis;
		fis = new FileInputStream(new File(filepath));
		
		
		//create workbook instance that refers to .ls file
		XSSFWorkbook wb;
	
			wb = new XSSFWorkbook(fis);
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ruralhealth?serverTimezone=UTC","root","root");

		
		//create a sheet object to reactive the sheet
		org.apache.poi.xssf.usermodel.XSSFSheet sheet = wb.getSheetAt(0);
	
		
		//this is for evaluate the cell type
		
				
				
		for(Row row : sheet) {
			String addstatement=
					"INSERT INTO dopl (LICENSE_NO, PROFESSION_NAME, LICENSE_NAME, DATE_OF_BIRTH, ISSUE_DATE, "
					+ "EXPIRATION_DATE, LIC_STATUS) "
					+ "VALUES (";
			
			ArrayList<String> values= new ArrayList<String>();
	/*    
	 * for(Row row1 : sheet1) {
				String addstatement1=
						"INSERT INTO npi (NPI, First_Name, Middle_Name, Last_Name, Suffix, Phone_Number, Discipline, "
						+ "Specialty, Status_, Ineligibal_CMS_Dectivated, Ineligibal_PCO_Omitted, Ineligibal_Not_Geocoded, "
						+ "Ineligibal_Federal_Provider, Inegilibal_NHSC_Provider, Ineligibal_J1_Visa_Waiver_Holder, "
						+ "Ineligibal_No_Discipline_Specialty, Ineligibal_New_Reviewed, Address_Line_1, Address_Line_2, City, "
						+ "State, Postal_Code, Country_Name, Latitude, Longtide, Match_Level, State_FIPS, Countt_FIPS, "
						+ "Census_Tract, CSD, Age, Dental_Auxiliaries, Direct_Tour_Hours, Reason_Code, Derves_at_Corre, "
						+ "Serves_at_State_County_Mental_Hospital, Annual_Medicaid_Claim, Medicaid_Patient, Homeless, "
						+ "Migrant_Farmwork, Native_American, Sliding_Fee, Migrant_Seasonal_Farmworker, Resident_Intern, "
						+ "J1_Visa_Waiver, Ferderal_Provider, NHSC_Provider, Activation_Date, SDMS_Last_Modified_Date, "
						+ "SDMS_Last_Modified_By, NPI_Address_Change_Date, NPI_Deactivation_Date, NPI_Reactivation_Date, "
						+ "NPI_NEW_Provider_Date, NPI_Taxonomy_Change_Date, Taxonomy_Code_1, TAxonomy_Type_1, "
						+ "License_Number_1, License_State_1) "
						+ "VALUES (";}
						*/
			for(int i=0;i<row.getLastCellNum();i++) {
				Cell cell=row.getCell(i);
				String cellValue=GetString(cell);
				
			//	
				if(i==0)
				{
					DataFormatter dataFormatter=new DataFormatter();
					String keyValue = dataFormatter.formatCellValue(cell);
					PreparedStatement checkstatement = con.prepareStatement(String.format("SELECT COUNT(*) FROM dopl WHERE dopl.LICENSE_NO='%s'",keyValue));
					System.out.println(String.format("SELECT COUNT(*) FROM dopl WHERE dopl.LICENSE_NO='%s'",keyValue));
					ResultSet result = checkstatement.executeQuery();
					result.next();
					String count=result.getString(1);
					System.out.println(count);
					if(count.charAt(0)!='0') 
					{
						break;
					}
				}
				
				//addstatement+=cellValue+",";
				values.add(cellValue);
				//switch(formulaEvaluator.evaluateInCell(cell).getCellType()) {
				//case NUMERIC:
					//System.out.print(cell.getNumericCellValue() + "\t\t");
				//	System.out.print(cell.toString()+ "\t\t");
				//	break;
					
				//case STRING:
					//System.out.print(cellValue+ "\t\t");
			//		System.out.print(cell.getStringCellValue()+ "\t\t");
					//break;
				
				//}
			}
		//	System.out.println(values.size());
		//	System.out.println(row.getLastCellNum());
			if(values.size()==row.getLastCellNum()) { 
				for(String k : values)
				{
					addstatement+=k;
				}
			 addstatement = addstatement.substring(0, addstatement.length() - 1);
			 addstatement+=");";
				
				PreparedStatement statement1 = con.prepareStatement(addstatement);
				System.out.println(addstatement);
				
				int result1 = statement1.executeUpdate();}
		//return fis;

	}
	}
}
