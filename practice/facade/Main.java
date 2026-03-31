package facade;

public class Main {
    public static void main(String[] args) {
        // Client only interacts with the Facade, not the subsystems directly
        ComputerFacade computer = new ComputerFacade();

        computer.startComputer();
        computer.shutdownComputer();
    }
}
