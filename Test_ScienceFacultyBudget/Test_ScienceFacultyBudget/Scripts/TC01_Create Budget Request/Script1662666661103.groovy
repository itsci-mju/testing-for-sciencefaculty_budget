import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject
import static com.kms.katalon.core.testobject.ObjectRepository.findWindowsObject
import com.kms.katalon.core.checkpoint.Checkpoint as Checkpoint
import com.kms.katalon.core.cucumber.keyword.CucumberBuiltinKeywords as CucumberKW
import com.kms.katalon.core.mobile.keyword.MobileBuiltInKeywords as Mobile
import com.kms.katalon.core.model.FailureHandling as FailureHandling
import com.kms.katalon.core.testcase.TestCase as TestCase
import com.kms.katalon.core.testdata.TestData as TestData
import com.kms.katalon.core.testng.keyword.TestNGBuiltinKeywords as TestNGKW
import com.kms.katalon.core.testobject.TestObject as TestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI
import com.kms.katalon.core.windows.keyword.WindowsBuiltinKeywords as Windows
import internal.GlobalVariable as GlobalVariable
import org.openqa.selenium.Keys as Keys

import webTest.ReadWriteExcel as ReadWriteExcel
import webTest.NewKeywords as NewKeywords

String [][]xTSdata;
String [][]xTCdata;
String [][]xTDdata;
String []result;

String xlPath_tc = "C:/Users/User/Desktop/Work/Project/Result/TC01_Create Budget Request/TC01_Create Budget Request.xlsx";
String xlPath_ts = "C:/Users/User/Desktop/Work/Project/Result/TC01_Create Budget Request/TS01_Create Budget Request.xlsx";
String xlPath_td = "C:/Users/User/Desktop/Work/Project/Result/TC01_Create Budget Request/TD01_Create Budget Request.xlsx";
String xlPath ="C:/Users/User/Desktop/Work/Project/KDF/TC01_Create Budget Request.xlsx";

ReadWriteExcel kdf = new ReadWriteExcel();
xTCdata = kdf.xlRead(xlPath, 0);
xTSdata = kdf.xlRead(xlPath, 1);
xTDdata = kdf.xlRead(xlPath, 2);

for(int i = 1; i < xTCdata.length; i++){
	if(xTCdata[i][4].equalsIgnoreCase('y')){
		try {
		for(int j = 1; j < xTDdata.length; j++){
			String actual_text = "";
			
			if(xTDdata[j][1].equalsIgnoreCase('y')){
				WebUI.openBrowser('')
				WebUI.navigateToUrl('http://localhost:8080/ScienceFacultyBudgetWeb/')
				
					
				CustomKeywords.'webTest.NewKeywords.button_click'(xTSdata[2][5])
				CustomKeywords.'webTest.NewKeywords.button_click'(xTSdata[3][5])
				
				CustomKeywords.'webTest.NewKeywords.edit_inputs'(xTSdata[4][5], xTDdata[j][2])
				CustomKeywords.'webTest.NewKeywords.edit_inputs'(xTSdata[5][5], xTDdata[j][3])
				CustomKeywords.'webTest.NewKeywords.edit_inputs'(xTSdata[6][5], xTDdata[j][4])
				CustomKeywords.'webTest.NewKeywords.edit_inputs'(xTSdata[7][5], xTDdata[j][5])
				CustomKeywords.'webTest.NewKeywords.edit_inputs'(xTSdata[8][5], xTDdata[j][6])
				CustomKeywords.'webTest.NewKeywords.edit_inputs'(xTSdata[9][5], xTDdata[j][7])
				CustomKeywords.'webTest.NewKeywords.list_select'(xTSdata[10][5], xTDdata[j][8])
				CustomKeywords.'webTest.NewKeywords.list_select'(xTSdata[11][5], xTDdata[j][9])
				CustomKeywords.'webTest.NewKeywords.edit_inputs'(xTSdata[12][5], xTDdata[j][10])
				CustomKeywords.'webTest.NewKeywords.edit_inputs'(xTSdata[13][5], xTDdata[j][11])
				CustomKeywords.'webTest.NewKeywords.edit_inputs'(xTSdata[14][5], xTDdata[j][12])
				CustomKeywords.'webTest.NewKeywords.edit_inputs'(xTSdata[15][5], xTDdata[j][13])
				CustomKeywords.'webTest.NewKeywords.edit_inputs'(xTSdata[16][5], xTDdata[j][14])
				CustomKeywords.'webTest.NewKeywords.list_select'(xTSdata[17][5], xTDdata[j][15])
				CustomKeywords.'webTest.NewKeywords.edit_inputs'(xTSdata[18][5], xTDdata[j][16])
				CustomKeywords.'webTest.NewKeywords.edit_inputs'(xTSdata[19][5], xTDdata[j][17])
				CustomKeywords.'webTest.NewKeywords.edit_inputs'(xTSdata[20][5], xTDdata[j][18])
				CustomKeywords.'webTest.NewKeywords.edit_inputs'(xTSdata[21][5], xTDdata[j][19])
				CustomKeywords.'webTest.NewKeywords.edit_inputs'(xTSdata[22][5], xTDdata[j][20])
				CustomKeywords.'webTest.NewKeywords.edit_inputs'(xTSdata[23][5], xTDdata[j][21])
				CustomKeywords.'webTest.NewKeywords.button_click'(xTSdata[24][5])
				try {
					actual_text = WebUI.getAlertText()
					//Thread.sleep(5000)
				}catch(Exception e){
					actual_text = "";
				}
					xTDdata[j][23] = actual_text
					if(actual_text.equals(xTDdata[j][22])){
						xTDdata[j][24] = "Pass"
					}else{
						   xTDdata[j][24] = "Fail"
						   xTDdata[j][25] = "- Not Match Expected Result -"
						   xTDdata[j][26] = "TC01_TD"+ j
						   CustomKeywords.'webTest.NewKeywords.Takescreen'("C:/Users/User/Desktop/Work/Project/Result/Capture/TC01_TD"+ j +".png")
					}
				}
				WebUI.closeBrowser()
			}
			xTCdata[i][6]= "Pass"
		}catch(Exception e){
			xTCdata[i][6] = "Fail"
		}
	
	   kdf.xlWrite(xlPath_ts, xTSdata, xTSdata.length, xTSdata[1].length)
	   kdf.xlWrite(xlPath_td, xTDdata, xTDdata.length, xTDdata[1].length)
	   kdf.xlWrite(xlPath_tc, xTCdata, xTCdata.length, xTCdata[1].length)
		}
	}