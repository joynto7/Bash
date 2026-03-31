package facade;

public class CPU {
    public void start() {
        System.out.println("CPU: Starting...");
    }

    public void execute() {
        System.out.println("CPU: Executing instructions...");
    }

    public void shutdown() {
        System.out.println("CPU: Shutting down...");
    }
}
