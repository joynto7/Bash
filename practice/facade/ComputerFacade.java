package facade;

// Facade class - hides the complexity of subsystems
public class ComputerFacade {
    private CPU cpu;
    private Memory memory;
    private HardDrive hardDrive;

    public ComputerFacade() {
        this.cpu = new CPU();
        this.memory = new Memory();
        this.hardDrive = new HardDrive();
    }

    public void startComputer() {
        System.out.println("=== Starting Computer ===");
        cpu.start();
        memory.load();
        hardDrive.readData();
        cpu.execute();
        System.out.println("Computer is ready!\n");
    }

    public void shutdownComputer() {
        System.out.println("=== Shutting Down Computer ===");
        cpu.shutdown();
        memory.free();
        System.out.println("Computer is off.");
    }
}
