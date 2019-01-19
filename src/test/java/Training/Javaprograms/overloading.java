package Training.Javaprograms;

public class overloading {
//    polymorphism

    public static void add1(int a,int b){
        int c= a+b;

        System.out.println(c);

    }

    public static void add1(int a,int b, int c){
        int d= a+b+c;
        System.out.println(d);

    }
    public static void add2(int a,int b,int c){
        int d= a+b+c;
        System.out.println(d);

    }

    public static void main(String[] args) {
        add1(10,20);
        add1(10,20,30);
        add2(10,20,30);
    }
}
