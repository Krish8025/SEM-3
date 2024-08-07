// Write a program to reverse a linked list.
public class ReverseLinkedList64 {
    class Node {
        int data;
        Node Link;

        public Node(int data) {
            this.data = data;
            this.Link = null;
        }
    }

    public Node first = null;

    public void InsertAtFirst(int data) {
        Node newNode = new Node(data);

        if (first == null) {
            first = newNode;
            return;
        }

        newNode.Link = first;
        first = newNode;
    }
    public Node ReverseLinkedList(Node head){
        Node prev = null;
        Node current = head;
        Node next = null;
        while(current != null){
            next = current.Link;
            current.Link = prev;
            prev = current;
            current = next;
        }
        head = prev;
        return head;
        }
    public void Display(){
        Node temp = first;
        while(temp != null){
            System.out.print(temp.data+"->");
            temp = temp.Link;
            }
        }    

    public static void main(String[] args) {
        ReverseLinkedList64 list = new ReverseLinkedList64();
        list.InsertAtFirst(1);
        list.InsertAtFirst(2);
        list.InsertAtFirst(3);
        list.InsertAtFirst(4);
        list.InsertAtFirst(5);

        System.out.println("Original LinkedList : ");
        list.Display();
        System.out.println("\nReversed LinkedList : ");
        list.first = list.ReverseLinkedList(list.first);
        list.Display();
    }
}


