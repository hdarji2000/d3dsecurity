package Training.com.stepdefination;

import io.github.bonigarcia.wdm.ChromeDriverManager;
import io.github.bonigarcia.wdm.FirefoxDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.safari.SafariDriver;

import java.io.File;

public class driverClass {

    public static WebDriver driver;

    public void openbrowser() {
        String browser;
        browser = System.getProperty("browser");

        String env;
        env = System.getProperty("env");

        String Filename = System.getProperty("user.dir") + "\\src\\test\\java\\Training\\com\\PropertyFiles\\enviroment_%s.properties";

//        File file = new File(String.format(Filename, env));
        File file = new File(String.format(Filename,env));


        if (browser.equalsIgnoreCase("CHROME")) {
            //Open a browser
            ChromeDriverManager.getInstance().setup();
            driver = new ChromeDriver();
        } else if (browser.equalsIgnoreCase("FIREFOX")) {

            FirefoxDriverManager.getInstance().setup();
            driver = new FirefoxDriver();
        } else {

            driver = new SafariDriver();
        }


        driver.get("https://www.d3dsecurity.co.uk");

    }

    public void closebrowser() {

        driver.close();

    }


}
