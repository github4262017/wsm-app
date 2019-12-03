package com.wms.util; 

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Iterator;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 * Sample Java program that imports data from an Excel file to MySQL database.
 * 
 * @author Nam Ha Minh - https://www.codejava.net
 * 
 */
public class Excel2DatabaseUpload {
    /*
	public static void main(String[] args) {
		String jdbcURL = "jdbc:mysql://localhost:3306/wms_schema";
		String username = "root";
		String password = "";

		
		String[] excelFilePath = { "Floor1.xlsx", "Floor2.xlsx", "Floor3.xlsx",
		  "Floor4.xlsx", "Floor5.xlsx","Floor6.xlsx", "Floor7.xlsx" };
		 
		
		//String[] excelFilePath = { "Floor6.xlsx" };
		
		//String[] excelFilePath = { "Floor2.xlsx", "Floor3.xlsx"};
		int batchSize = 20;

		Connection connection = null;
		for (int i = 0; i < excelFilePath.length; i++) {

			try {
				long start = System.currentTimeMillis();

				FileInputStream inputStream = new FileInputStream(excelFilePath[i]);

				Workbook workbook = new XSSFWorkbook(inputStream);

				Sheet firstSheet = workbook.getSheetAt(0);
				Iterator<Row> rowIterator = firstSheet.iterator();

				connection = DriverManager.getConnection(jdbcURL, username, password);
				connection.setAutoCommit(false);

				String sql = "INSERT INTO wms_sony_emp_details (floor_id, workstation_no, gid, employee_name, project_name, project_manager, division, remark, ext,gid_manager) VALUES (?, ?, ?,?, ?, ?,?, ?, ?,?)";
				// String sql = "INSERT INTO wms_sony_data (floor_id, workstation_no, gid)
				// VALUES (?, ?, ?)";
				PreparedStatement statement = connection.prepareStatement(sql);

				int count = 0;

				rowIterator.next(); // skip the header row

				while (rowIterator.hasNext()) {
					Row nextRow = rowIterator.next();
					Iterator<Cell> cellIterator = nextRow.cellIterator();
					DataFormatter formatter = new DataFormatter();

					while (cellIterator.hasNext()) {
						Cell nextCell = cellIterator.next();

						int columnIndex = nextCell.getColumnIndex();

						switch (columnIndex) {
						case 0:
							// int floor_id = (int) nextCell.getNumericCellValue();
							String floor_id = formatter.formatCellValue(nextCell);
							statement.setString(1, floor_id);
							System.out.println("floor_id" + floor_id);
							break;
						case 1:
							String workstation_no = nextCell.getStringCellValue();
							statement.setString(2, workstation_no);
							System.out.println("workstation_no" + workstation_no);
							break;
						case 2:
							// String gid = nextCell.getStringCellValue();
							String gid = formatter.formatCellValue(nextCell);
							statement.setString(3, gid);
							break;
						case 3:
							String employee_name = formatter.formatCellValue(nextCell);
							statement.setString(4, employee_name);
							System.out.println("employee_name" + employee_name);
							break;
						case 4:
							String project_name = nextCell.getStringCellValue();
							statement.setString(5, project_name);
							System.out.println("project_name" + project_name);
							break;
						case 5:
							String project_manager = nextCell.getStringCellValue();
							statement.setString(6, project_manager);
							System.out.println("project_manager" + project_manager);
							break;
						case 6:
							String division = nextCell.getStringCellValue();
							statement.setString(7, division);
							System.out.println("division" + division);
							break;
						case 7:
							String remark = nextCell.getStringCellValue();
							statement.setString(8, remark);
							System.out.println("remark" + remark);
							break;
						case 8:
							// int ext = (int)nextCell.getNumericCellValue();
							String ext = formatter.formatCellValue(nextCell);
							statement.setString(9, ext);
							System.out.println("ext" + ext);
							break;

						case 9:
							// String gid_manager = nextCell.getStringCellValue();
							String gid_manager = formatter.formatCellValue(nextCell);
							statement.setString(10, gid_manager);
							System.out.println("gid_manager" + gid_manager);
							break;

						}

					}

					statement.addBatch();

					if (count % batchSize == 0) {
						statement.executeBatch();
					}

				}

				workbook.close();

				// execute the remaining queries
				statement.executeBatch();

				connection.commit();
				connection.close();

				long end = System.currentTimeMillis();
				System.out.printf("Import done in %d ms\n", (end - start));

			} catch (IOException ex1) {
				System.out.println("Error reading file");
				ex1.printStackTrace();
			} catch (SQLException ex2) {
				System.out.println("Database error");
				ex2.printStackTrace();
			}
		}
	} */

}
