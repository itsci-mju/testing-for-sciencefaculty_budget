package webTest
import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject
import static com.kms.katalon.core.testobject.ObjectRepository.findWindowsObject

import com.kms.katalon.core.annotation.Keyword
import com.kms.katalon.core.checkpoint.Checkpoint
import com.kms.katalon.core.cucumber.keyword.CucumberBuiltinKeywords as CucumberKW
import com.kms.katalon.core.mobile.keyword.MobileBuiltInKeywords as Mobile
import com.kms.katalon.core.model.FailureHandling
import com.kms.katalon.core.testcase.TestCase
import com.kms.katalon.core.testdata.TestData
import com.kms.katalon.core.testobject.TestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI
import com.kms.katalon.core.windows.keyword.WindowsBuiltinKeywords as Windows
import com.kms.katalon.core.testng.keyword.TestNGBuiltinKeywords as TestNGKW
import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject
import static com.kms.katalon.core.testobject.ObjectRepository.findWindowsObject

import java.text.SimpleDateFormat
import java.time.LocalDate;
import internal.GlobalVariable
import java.util.Date;
import java.util.Locale;
import org.openqa.selenium.Alert
import org.openqa.selenium.TakesScreenshot
//import org.openqa.selenium.WebDriver
import org.openqa.selenium.WebElement
import com.kms.katalon.core.configuration.RunConfiguration as RunConfiguration
import org.openqa.selenium.chrome.ChromeDriver
import org.openqa.selenium.support.ui.Select
import org.openqa.selenium.support.ui.WebDriverWait
import static java.time.Duration.ofMillis;
import static java.time.Duration.ofSeconds;
import org.openqa.selenium.WebDriver
import com.kms.katalon.core.webui.driver.DriverFactory
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI
import org.openqa.selenium.By
import org.openqa.selenium.WebDriver

public class NewKeywords {

	WebDriver webDriver = DriverFactory.getWebDriver()

	@Keyword
	public void button_click(String xPath) {
		WebUI.delay(1)
		webDriver.findElement(By.xpath(xPath)).click();
	}

	@Keyword
	public void edit_input(String xPath, String fText) {
		WebUI.delay(1)
		webDriver.findElement(By.xpath(xPath)).click();
		webDriver.findElement(By.xpath(xPath)).sendKeys(fText);
	}

	@Keyword
	public void edit_inputs(String xPath, String fText) {
		WebUI.delay(1)
		webDriver.findElement(By.xpath(xPath)).clear();
		webDriver.findElement(By.xpath(xPath)).sendKeys(fText);
	}
	@Keyword
	public void edit_inputID(String id, String fText) {
		WebUI.delay(1)
		webDriver.findElement(By.id(xPath)).sendKeys(fText);
	}

	@Keyword
	public String get_text(String xPath) {
		WebUI.delay(1)
		String text = webDriver.findElement(By.xpath(xPath)).getText();
		return text;
	}

	@Keyword
	public void list_select(String xPath, String fText) {
		Select select = new Select(webDriver.findElement(By.xpath(xPath)));
		List <WebElement> options = select.getOptions();

		if(fText.equals('ขออนุญาตเข้าเป็นวิทยากรแบบที่ 1')){
			WebUI.selectOptionByValue(findTestObject('Object Repository/Page_/select_1  2'), '0', true)
		}
		if(fText.equals('ใช้งบประมาณ')){
			WebUI.selectOptionByValue(findTestObject('Object Repository/Page_/select_'), '1', true)
		}
		if(fText.equals('มี')){
			WebUI.selectOptionByValue(findTestObject('Object Repository/Page_/select__1'), '1', true)
		}
		if(fText.equals('รถยนต์ส่วนตัว')){
			WebUI.selectOptionByValue(findTestObject('Object Repository/Page_/select__1_2'), 'รถยนต์ส่วนตัว', true)
		}

	}
	@Keyword
	public void uploadFile (String xPath, String fText) {
		if(fText.equals('Document')){
			WebUI.uploadFile(findTestObject('Uploadfile/Page_/input__file'), 'C:\\Users\\User\\Desktop\\Work\\Project\\Document\\Project6119_ScienceFacultyBudget_v03.pdf')
		}
	}
	@Keyword
	public void PictureList (String xPath, String fText) {
		try{

			if(fText.equals("profile.pdf")){
				WebUI.uploadFile(findTestObject('TS01/Page_/input__avatar'), 'D:\\Image\\profile.pdf')
			}else if(fText.equals("profile.gif")){
				WebUI.uploadFile(findTestObject('TS01/Page_/input__avatar'), 'D:\\Image\\profile.gif')
			}

			if(fText.equals("IDcard.pdf")){
				WebUI.uploadFile(findTestObject('TS01/Page_/input_(PDF  )_copyOfIdCard'), 'D:\\Image\\IDcard.pdf')
			}else if(fText.equals("IDcard.gif")){
				WebUI.uploadFile(findTestObject('TS01/Page_/input_(PDF  )_copyOfIdCard'), 'D:\\Image\\IDcard.gif')
			}

			if(fText.equals("house.pdf")){
				WebUI.uploadFile(findTestObject('TS01/Page_/input_(PDF  )_houseRegistrationDocument'), 'D:\\Image\\house.pdf')
			}else if(fText.equals("house.gif")){
				WebUI.uploadFile(findTestObject('TS01/Page_/input_(PDF  )_houseRegistrationDocument'), 'D:\\Image\\house.gif')
			}

			if(fText.equals("transcript.pdf")){
				WebUI.uploadFile(findTestObject('TS01/Page_/input_(PDF  )_educationalCertificate'), 'D:\\Image\\transcript.pdf')
			}else if(fText.equals("transcript.gif")){
				WebUI.uploadFile(findTestObject('TS01/Page_/input_(PDF  )_educationalCertificate'), 'D:\\Image\\transcript.gif')
			}

			if(fText.equals("medical.pdf")){
				WebUI.uploadFile(findTestObject('TS01/Page_/input_(  )_medicalCertificate'), 'D:\\Image\\medical.pdf')
			}else if(fText.equals("medical.gif")){
				WebUI.uploadFile(findTestObject('TS01/Page_/input_(  )_medicalCertificate'), 'D:\\Image\\medical.gif')
			}

			WebUI.delay(1)
			if(fText.equals("proof.pdf")){
				WebUI.uploadFile(findTestObject('TS03/Page_/input__proof'), 'D:\\Image\\proof.pdf')
			}else if(fText.equals("proof.gif")){
				WebUI.uploadFile(findTestObject('TS03/Page_/input__proof'), 'D:\\Image\\proof.gif')
			}

			WebUI.delay(1)
			if(fText.equals("Image1.pdf")){
				WebUI.uploadFile(findTestObject('TS06/Page_/input__mainimage'), 'D:\\Image\\Image.pdf')
			}else if(fText.equals("Image1.gif")){
				WebUI.uploadFile(findTestObject('TS06/Page_/input__mainimage'), 'D:\\Image\\Image.gif')
			}

			WebUI.delay(1)
			if(fText.equals("Image2.pdf")){
				WebUI.uploadFile(findTestObject('TS06/Page_/input_  Ctrl  1 _image_article'), 'D:\\Image\\Image.pdf')
			}else if(fText.equals("Image2.gif")){
				WebUI.uploadFile(findTestObject('TS06/Page_/input_  Ctrl  1 _image_article'), 'D:\\Image\\Image.gif')
			}
			WebUI.delay(1)
			if(fText.equals("Image3.pdf")){
				WebUI.uploadFile(findTestObject('TS07/Page_/input__new_mainimg'), 'D:\\Image\\Image.pdf')
			}else if(fText.equals("Image3.gif")){
				WebUI.uploadFile(findTestObject('TS07/Page_/input__new_mainimg'), 'D:\\Image\\Image.gif')
			}

			WebUI.delay(1)
			if(fText.equals("Image4.pdf")){
				WebUI.uploadFile(findTestObject('TS07/Page_/input_  (120)_newimg'), 'D:\\Image\\Image.pdf')
			}else if(fText.equals("Image4.gif")){
				WebUI.uploadFile(findTestObject('TS07/Page_/input_  (120)_newimg'), 'D:\\Image\\Image.gif')
			}

		}catch(Exception e){

		}
	}

	/*	@Keyword
	 public  void radio_select(String xPath, String fText) {
	 List<WebElement> radio = webDriver.findElements(By.xpath(xPath));
	 for (int i = 0; i < radio.size(); i++) {
	 if (radio.get(i).getAttribute(fText).equals(fText)) {
	 radio.get(i).click();
	 return ;
	 }
	 }
	 throw new NoSuchElementException("Invalid Radio button Selected");
	 }
	 */

	@Keyword
	public String Takescreen (String path) {

		WebUI.takeScreenshot(path)
	}
}


