package aula08.Ex01.Interfaces;

public interface ElectricVehicleInterface {
    int autonomy();              // devolve autonomia restante
    void charge(int percentage); // simula um carregamento até 'percentagem'
}
