package Training.Javaprograms;

public class returnmethod {
    static int i;
    static String USER_NAME= "TEST1.TEST3";

//    public static void name(String name){
//        System.out.println("myname is ==="+name);
//
//    }
//
//    public static void main(String[] args) {
//        name("hash");
//    }

    public static int method2(int marks){
        System.out.println(USER_NAME);
         i= marks+30;
         int j= 0;
        System.out.println(j);
        System.out.println(i);
        return i;

    }
    public static void method3(){
        System.out.println(USER_NAME);
    }
    public static void method4(){
        System.out.println(USER_NAME);
    }
    public static void method5(){
        System.out.println(USER_NAME);

    }
    public static void method6(){
        System.out.println(USER_NAME);

    }
    public static void method7(){

    }

    public static void main(String[] args) {
        int j=method2(10);
        System.out.println(j+20);
        method3();
        method4();
        method5();
        method6();
        method7();

    }






}
