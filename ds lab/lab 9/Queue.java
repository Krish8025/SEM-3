import java.util.Scanner;

public class Queue {
   int MAX_SIZE = 5;
    int[] array = new int[MAX_SIZE];
     int front = 0;
     int rear = -1;
     int size = 0;


     
    public void enqueue(int element) {
        if (size == MAX_SIZE) {
            System.out.println("Queue is full. Cannot enqueue.");
            return;
        }
        rear = (rear + 1) % MAX_SIZE;
        array[rear] = element;
        size++;
    }

    public void dequeue() {
        if (size == 0) {
            System.out.println("Queue is empty. Cannot dequeue.");
            return;
        }
        int removedElement = array[front];
        front = (front + 1) % MAX_SIZE;
        size--;
        System.out.println("Dequeued element: " + removedElement);
    }

    public void display() {
        if (size == 0) {
            System.out.println("Queue is empty.");
            return;
        }
        System.out.print("Queue elements: ");
        for (int i = 0; i < size; i++) {
            int index = (front + i) % MAX_SIZE;
            System.out.print(array[index] + " ");
        }
        System.out.println();
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Queue q = new Queue();

        while (true) {
            System.out.println("1. Enqueue");
            System.out.println("2. Dequeue");
            System.out.println("3. Display");
            System.out.println("4. Exit");
            System.out.print("Enter Choice: ");
            int choice = sc.nextInt();

            switch (choice) {
                case 1:
                    System.out.print("Enter element to be added: ");
                    int element = sc.nextInt();
                    q.enqueue(element);
                    break;
                case 2:
                    q.dequeue();
                    break;
                case 3:
                    q.display();
                    break;
                case 4:
                    System.out.println("Exiting the program.");
                    sc.close();
                    return;
                default:
                    System.out.println("Invalid choice. Please try again.");
            }
        }
    }
}
