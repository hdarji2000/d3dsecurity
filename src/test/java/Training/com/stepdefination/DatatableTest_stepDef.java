package Training.com.stepdefination;
import Training.com.Pages.DatatableTest_page;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.support.PageFactory;

import static org.junit.Assert.assertEquals;

public class DatatableTest_stepDef extends driverClass {

    public DatatableTest_page DTPage= PageFactory.initElements(driver,DatatableTest_page.class);

    @Given("^I enter url as \"([^\"]*)\"$")
    public void iEnterUrlAs(String url) throws Throwable {
        System.out.println("Dilip Testing" + url);

//        openBrowser();

        //Enter URL
        driver.get("url");
        driver.manage().window().maximize();
    }

    @When("^I Click Register button$")
    public void iClickRegisterButton() {

      //    public void iClickRegisterButton()throws Throwable {
        DTPage.clickRegButton();
    }

    @Given("^I enter First Name as \"([^\"]*)\"$")
    public void iEnterFirstNameAs(String firstName) throws Throwable {
        driver.findElement(By.name("first_name")).sendKeys("firstName");
        
    }

    @Given("^I enter last Name as \"([^\"]*)\"$")
    public void iEnterLastNameAs(String lastName) throws Throwable {
      driver.findElement(By.xpath("/html/body/div[1]/div[1]/div[2]/div[1]/main/article/div/div/form/fieldset/div[2]/input")).sendKeys(lastName);
    }

    @Given("^I enter email Id as \"([^\"]*)\"$")
    public void iEnterEmailIdAs(String EmailId) throws Throwable {
        driver.findElement(By.cssSelector(".cleanlogin-field-email")).sendKeys(EmailId);

    }

    @Given("^I enter New Password as \"([^\"]*)\"$")
    public void iEnterNewPasswordAs(String Newpassword) throws Throwable {
     driver.findElement(By.name("pass1")).sendKeys(Newpassword);
    }

    @Given("^I enter Confirm Password as \"([^\"]*)\"$")
    public void iEnterConfirmPasswordAs(String con_password) throws Throwable {
        driver.findElement(By.name("pass2")).sendKeys(con_password);

    }

    @When("^I Click Register button on Registration page$")
    public void iClickRegisterButtonOnRegistrationPage() throws Throwable {
        driver.findElement(By.name("btn-submit")).click();
    }

    @Then("^I should see my Account text$")
    public void iShouldSeeMyAccountText() {
        String actual_pageTitle;
        String expected_pageTitle="My Account";

        actual_pageTitle= driver.findElement(By.cssSelector(".page-entry-title")).getText();

        assertEquals(expected_pageTitle,actual_pageTitle);


    }

    @And("^I should see url as \"([^\"]*)\"$")
    public void iShouldSeeUrlAs(String expected_url) throws Throwable {
        String actual_url;
        actual_url=driver.getCurrentUrl();

        assertEquals(expected_url,actual_url);


    }

    @Then("^I should see error messages as\"([^\"]*)\"$")
    public void iShouldSeeErrorMessagesAs(String ErrorMessage) throws Throwable {

    }


private static class DTPage {
    }
    //https://www.d3dsecurity.co.uk/my-account/

}