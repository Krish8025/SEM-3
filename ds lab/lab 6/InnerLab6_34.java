import java.util.Scanner;
class Lab6_34{
    int Employee_id;
    String name;
    String designation;
    int salary;

    void getDetail(){
        Scanner sc =new Scanner(System.in);
        System.out.println("enter Employee id");
        Employee_id=sc.nextInt();
        System.out.println("enter Name");
        name=sc.next();
        System.out.println("enter designation");
        designation=sc.next();
        System.out.println("enter salary");
        salary=sc.nextInt();
        sc.close();
    }
    void displayDetail(){
        System.out.println("Employee_id : "+Employee_id);
        System.out.println("name : "+name);
        System.out.println("designation : "+designation);
        System.out.println("salary : "+salary);
    }

}
public class InnerLab6_34 {
    public static void main(String[] args) {
        Lab6_34 e1=new Lab6_34();
        e1.getDetail();
        e1.displayDetail();
    }
    
}
