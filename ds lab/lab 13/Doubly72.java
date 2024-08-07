class Node{
    int info;
    Node lptr;
    Node rptr;
    Node (int data) {
      info= data;
      lptr = null;
      rptr= null;
    }
  }
  
  
  public class Doubly72 {
      Node first= null;
      Node last = null;
  
      //to insert at first position
      public void insertFirst(int x){
          Node newNode = new Node(x);
         
          if (first == null) {
              first=newNode;
              last = newNode;
          }
          else{
              newNode.rptr=first;
              first.lptr= newNode;
              first= newNode;
          }
      }
      //inserting node at the end 
      public void insertLast(int x){
          Node newNode = new Node(x);
          if (last== null) {
              first= newNode;
              last=newNode;
          }
          else{
              last.rptr=newNode;
              newNode.lptr=last;
              last=newNode;
  
          }
  
  
      }
  
      // delete a node of specific postion
      public void delete(int x) {
          Node save = first;
  
          if (x==0) {
              first= first.rptr;
              return;
          }
  
          
          for (int i=0;i<=x;i++) {
              save = save.rptr;
             
              }
              save.lptr.rptr=save.rptr;
              save.rptr.lptr=save.lptr;
  
          }
         
          
      
         
      
      public void display() {
          Node temp = first;
          while(temp != null) {
              System.out.print(temp.info + " ");
              temp = temp.rptr;
  
          }
          System.out.println();
      }
  
  
      public static void main(String[] args) {
          Doubly72 c = new Doubly72();
          c.insertFirst(3);
          c.insertFirst(4);
          c.insertFirst(5);
          c.insertFirst(6);
          c.insertFirst(7);
          c.insertLast(10);
          
          c.display();
          
      }
      
  }