using System.Diagnostics;

namespace preparcial
{
    internal class Program
    {
        static void Main(string[] args)
        {
            double saldo = 10000;
            int intentos = 0;
            int pinCorrecto=1234;
            int pin;

            //Validacion de pin 
            while (intentos<3)
            {
                Console.WriteLine("Ingrese su pin:");
                if (int.TryParse(Console.ReadLine(), out pin))
                {
                    if (pin == pinCorrecto)
                    {
                        Console.WriteLine("Acceso concedido");
                        int opcion = 0;
                        //menu principal
                        while (opcion!=4)
                        {
                            Console.WriteLine("Menu principal");
                            Console.WriteLine("1- Consultar Saldo");
                            Console.WriteLine("2- Depositar dinero");
                            Console.WriteLine("3- Retirar dinero");
                            Console.WriteLine("4- Salir");
                            Console.WriteLine("Digite una opcion: [ ]");
                            int.TryParse(Console.ReadLine(), out opcion);

                            switch (opcion) {
                                case 1:
                                    break;
                                case 2:
                                    break;
                                case 3:
                                    break;
                                case 4:
                                    Console.WriteLine("GRacias por usar el cajero");
                                    break;
                                default:
                                    Console.WriteLine("Opcion invalida");
                                    break;
                            }
                            Console.WriteLine();

                        }
                        //finalizar el progreso
                        return;
                    }
                    else
                    {
                        intentos++;
                        Console.WriteLine("pin incorrecto, intentos"+ intentos +"de 3");
                    }
                }
                else
                {
                    Console.WriteLine("Digite un pin valido");
                }
            }
            // bloqueo de tarjeta
            Console.WriteLine("Tarjeta Bloqueada, \nDemasiados intentos fallidos");
            Console.ReadKey();
        }
    }
}
