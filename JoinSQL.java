package MergeData;

public class JoinSQL {


	public static void main(String[] args) {
		// TODO Auto-generated method stub
        ExcelReaderDopl ExcelReaderObject = new ExcelReaderDopl();
        String filepath = "src/mergedata/DOPL-test.xlsx";
		//ExcelReaderObject = ReadData(filepath);
        
		
	//	try{ExcelReaderObject.ReadData(filepath);}
		//catch(Exception e)
		//{
			
		//}
		
        
		 DataConnector DataConnectorObject = new DataConnector();
	        String filepath2 = "src/mergedata/DOPL-test.xlsx";
			//DataConnectorObject = ReadData(filepath2);
	        
			
			try{DataConnector.ReadData(filepath);}
			catch(Exception e)
			{
				System.out.printf("exception occured"); 
			}
        
        
        
	}

/*	private static ExcelReader ReadData(Object filepath) {
		// TODO Auto-generated method stub
		return null;
	}
	private static DataConnector ReadData(Object filepath) {
		// TODO Auto-generated method stub
		return null;
	}
	*/
}