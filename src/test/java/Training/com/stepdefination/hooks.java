package Training.com.stepdefination;

import cucumber.api.java.After;
import cucumber.api.java.Before;

public class hooks {
    driverClass dclass=new driverClass();




@Before
    public void open(){
        dclass.openbrowser();
    }
@After
    public void close(){
        dclass.closebrowser();
    }











}
