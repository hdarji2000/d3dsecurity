package Training.com.Pages;

import Training.com.stepdefination.driverClass;
import org.openqa.selenium.By;

public class DatatableTest_page extends driverClass {



    public void clickRegButton() {
        driver.findElement(By.linkText("Register")).click();

    }
}
