import java.util.Scanner;

public class StackDemo {
    int TOP;
    int MAX;
    int[] s;

    public StackDemo(int size) {
        MAX = size;
        s = new int[MAX];
        TOP = -1;
    }

    public void push(int value) {
        if (TOP >= MAX - 1) {
            System.out.println("Stack Overflow");
        } else {
            s[++TOP] = value;
            System.out.println("Pushed Value: " + value);
        }
    }

    public int pop() {
        if (TOP < 0) {
            System.out.println("Stack Underflow");
            return -1;
        } else {
            int value =s[TOP--];
            return value;
        }
    }

    public int peep(int i) {
        if (i <= 0 && TOP - i + 1 < 0) {
            System.out.println("Invalid index for Peep. Stack Underflow.");
            return -1;
        } else {
            return s[TOP - i + 1];
        }
    }

    public void change(int x, int a) {
        if (a <= 0 && TOP - a + 1 < 0) {
            System.out.println("Invalid index for Change. Stack Underflow.");
        } else {
            s[TOP - a + 1] = x;
            System.out.println("Changed value at index " + a + " to " + x);
        }
    }

    public void display() {
        if (TOP < 0) {
            System.out.println("Stack is empty");
        } else {
            System.out.println("Stack Elements:");
            for (int j = TOP; j >= 0; j--) {
                System.out.print(s[j] + " , ");
            }
            System.out.println();
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter maximum size of stack: ");
        int max = sc.nextInt();
        StackDemo stack = new StackDemo(max);

        while (true) {
            System.out.println("\nMenu:");
            System.out.println("1. Push");
            System.out.println("2. Pop");
            System.out.println("3. Peep");
            System.out.println("4. Change");
            System.out.println("5. Display");
            System.out.println("6. Exit");
            System.out.print("Enter your choice: ");
            int choice = sc.nextInt();

            switch (choice) {
                case 1:
                    System.out.print("Enter value to push: ");
                    int value = sc.nextInt();
                    stack.push(value);
                    break;
                case 2:
                    int poppedValue = stack.pop();
                    if (poppedValue != -1) {
                        System.out.println("Popped Value: " + poppedValue);
                    }
                    break;
                case 3:
                    System.out.print("Enter the index (1-based): ");
                    int i = sc.nextInt();
                    int peepedValue = stack.peep(i);
                    if (peepedValue != -1) {
                        System.out.println("Peeped Value: " + peepedValue);
                    }
                    break;
                case 4:
                    System.out.print("Enter the value and index (1-based): ");
                    int x = sc.nextInt();
                    int a = sc.nextInt();
                    stack.change(x, a);
                    break;
                case 5:
                    stack.display();
                    break;
                case 6:
                    System.out.println("Exiting program.");
                    sc.close();
                    return;
                default:
                    System.out.println("Invalid choice. Try again.");
            }
        }
    }
}