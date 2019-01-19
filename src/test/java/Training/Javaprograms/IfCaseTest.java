package Training.Javaprograms;


public class IfCaseTest {


    public static void Score(int marks){

        if(marks==35){
            System.out.println("you are just Failed");
        }else if(marks==40){
            System.out.println("Your in 3rd class");
        }else if(marks==70){
            System.out.println("your in 2nd class");
        }else if(marks==90){
            System.out.println("Your in 1st class");
        }else if(marks==100){
            System.out.println("you got 100%");
        }else{
            System.out.println("INVALID VALUE");
        }
    }

    public static void method2(String Gender){
        if(Gender.equalsIgnoreCase("M")){
            System.out.println("MALE.");
        }else if(Gender=="F"){
            System.out.println("FEMALE");
        }else{
            System.out.println("NOT APPLICABLE");
        }
    }

    public static void main(String[] args) {
//        Score(40);
        method2("m");
        method2("Dilip");
    }
}
