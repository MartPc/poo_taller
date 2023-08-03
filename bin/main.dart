import 'participante.dart';
import 'reporte.dart';
import 'dart:io';
void main(List<String> arguments) {

  
  while (true) {
    menu();
    int option = int.parse(stdin.readLineSync()!);
    switch (option) {
      case 1:
        Participante.inscribir();
        break;
      case 2:
        Participante.listarParticipantes();
        break;
      case 3:
        Participante.consultarParticipante();
        break;
      case 4:
        Participante.editar();
        break;
      case 5:
        Participante.cambiarEstado();
        break;
      case 6:
        Reporte.seleccionarParticipante();
        break;
      case 7:
        Reporte.inhabilitadoParticipante();
        break;
      case 8:
        print('Sesión finalizada');
        exit(0);
      default:
        print('Opción no válida');
        break;
    }
  }


}
