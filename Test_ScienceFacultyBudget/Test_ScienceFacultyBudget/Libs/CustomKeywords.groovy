
/**
 * This class is generated automatically by Katalon Studio and should not be modified or deleted.
 */

import java.lang.String

import org.apache.poi.xssf.usermodel.XSSFCell



def static "webTest.ReadWriteExcel.xlRead"(
    	String sPath	
     , 	int sheetNo	) {
    (new webTest.ReadWriteExcel()).xlRead(
        	sPath
         , 	sheetNo)
}


def static "webTest.ReadWriteExcel.cellToString"(
    	XSSFCell cell	) {
    (new webTest.ReadWriteExcel()).cellToString(
        	cell)
}


def static "webTest.ReadWriteExcel.xlWrites"(
    	String xlPath	
     , 	String[][] xldata	
     , 	int rows	
     , 	int cols	) {
    (new webTest.ReadWriteExcel()).xlWrites(
        	xlPath
         , 	xldata
         , 	rows
         , 	cols)
}


def static "webTest.ReadWriteExcel.xlWrite"(
    	String xlPath	
     , 	String[][] xldata	
     , 	int rows	
     , 	int cols	) {
    (new webTest.ReadWriteExcel()).xlWrite(
        	xlPath
         , 	xldata
         , 	rows
         , 	cols)
}


def static "webTest.ReadWriteExcel.getxRows"() {
    (new webTest.ReadWriteExcel()).getxRows()
}


def static "webTest.ReadWriteExcel.setxRows"(
    	int xRows	) {
    (new webTest.ReadWriteExcel()).setxRows(
        	xRows)
}


def static "webTest.ReadWriteExcel.getxCols"() {
    (new webTest.ReadWriteExcel()).getxCols()
}


def static "webTest.ReadWriteExcel.setxCols"(
    	int xCols	) {
    (new webTest.ReadWriteExcel()).setxCols(
        	xCols)
}


def static "webTest.ReadWriteExcel.getXldata"() {
    (new webTest.ReadWriteExcel()).getXldata()
}


def static "webTest.ReadWriteExcel.setXldata"(
    	String[][] xldata	) {
    (new webTest.ReadWriteExcel()).setXldata(
        	xldata)
}


def static "webTest.NewKeywords.button_click"(
    	String xPath	) {
    (new webTest.NewKeywords()).button_click(
        	xPath)
}


def static "webTest.NewKeywords.edit_input"(
    	String xPath	
     , 	String fText	) {
    (new webTest.NewKeywords()).edit_input(
        	xPath
         , 	fText)
}


def static "webTest.NewKeywords.edit_inputs"(
    	String xPath	
     , 	String fText	) {
    (new webTest.NewKeywords()).edit_inputs(
        	xPath
         , 	fText)
}


def static "webTest.NewKeywords.edit_inputID"(
    	String id	
     , 	String fText	) {
    (new webTest.NewKeywords()).edit_inputID(
        	id
         , 	fText)
}


def static "webTest.NewKeywords.get_text"(
    	String xPath	) {
    (new webTest.NewKeywords()).get_text(
        	xPath)
}


def static "webTest.NewKeywords.list_select"(
    	String xPath	
     , 	String fText	) {
    (new webTest.NewKeywords()).list_select(
        	xPath
         , 	fText)
}


def static "webTest.NewKeywords.uploadFile"(
    	String xPath	
     , 	String fText	) {
    (new webTest.NewKeywords()).uploadFile(
        	xPath
         , 	fText)
}


def static "webTest.NewKeywords.PictureList"(
    	String xPath	
     , 	String fText	) {
    (new webTest.NewKeywords()).PictureList(
        	xPath
         , 	fText)
}


def static "webTest.NewKeywords.Takescreen"(
    	String path	) {
    (new webTest.NewKeywords()).Takescreen(
        	path)
}
