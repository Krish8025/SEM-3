import java.util.Scanner;
public class CopyLinkedList {
    class Node{
        int info;
        Node link; 
        public Node(int data){
            this.info=data;
            this.link=null;
        }
    }
    public Node first=null;
    void insertAtFirst(int data){
        Node newNode=new Node(data);
        if(first==null){
            first=newNode;
            return;
        }
        Node temp=first;
        first=newNode;
        first.link=temp;
    }
    void insertAtLast(int data){
        Node newNode=new Node(data);
        if(first==null){
            first=newNode;
            return;
        }
        Node last=first;
        while (last.link!=null) {
            last=last.link;
    
        }
        last.link=newNode;
    }
    void insertAtOrder(int data){
        Node newNode=new Node(data);
        if(first==null || newNode.info<=first.info){
            newNode.link=first;
            first=newNode;
            return;
        }
        Node save=first;
        while (save.link!=null && newNode.info>=save.link.info) {
            save=save.link;
        }
        newNode.link=save.link;
        save.link=newNode;
    }
    void delete(int data){
        if(first==null){
            System.out.println("empty");
            return;
        }
        Node temp=first;
        Node prev=null;
        if(temp.info==data){
            first=temp.link;
            return;
        }
        while (temp!=null && temp.info!=data) {
            prev=temp;
            temp=temp.link;
        }
        if(temp==null){
            System.out.println("node not found");
            return;
        }
        prev.link=temp.link;
    }
    void display()
    {
        if(first==null)
        {
            System.out.println("linked list not found");
            return;
        }
        Node save=first;
        while(save.link!=null)
        {
            System.out.print(save.info+"->");
            save=save.link;
        }
        System.out.print(save.info);
    }
    void copy(){
        if(first==null){
            System.out.println("linkedlist is empty");
            return;
        }
        Node newNode =new Node(0);
        Node temp = first;
        while (temp.link!=null) {
            newNode.info=temp.info;
            newNode.link=temp.link;
            temp=temp.link;
            
        }
    }
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        CopyLinkedList l1 = new CopyLinkedList();
        while (true) {
        System.out.println("Enter ");
        System.out.println("1 for insert at first \n" + "2 for insert at last \n" + "3 for insert in order \n"
                + "4 to Delete an Element\n" + "5 to copy linked list\n" + "6 for break");
        int temp = sc.nextInt();
       
        
            switch (temp) {
                case 1:
                    System.out.println();
                    System.out.println("Enter element to insert at first");
                    int x = sc.nextInt();
                    l1.insertAtFirst(x);
                    l1.display();
                    break;

                case 2:
                    System.out.println();
                    System.out.println("Enter element to insert at last");
                    int x1 = sc.nextInt();
                    l1.insertAtLast(x1);
                    l1.display();
                    break;
                case 3:
                    System.out.println();
                    System.out.println("Enter element to insert in order");
                    int o = sc.nextInt();
                    l1.insertAtOrder(o);
                    l1.display();
                case 4:
                l1.delete(temp);
                l1.display();
                case 5:
                l1.copy();
                l1.display();
                case 6:
                
                return;
            }
        }
        
    }
    
}
 