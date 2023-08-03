import 'participante.dart';

class Reporte {
  static seleccionarParticipante() {
    List<int> edades = [];
    int contador = 0;

    if (Participante.participantes.isNotEmpty) {
      for (var l in Participante.participantes) {

        if ((l.sisben == 'A' || l.sisben == 'B') &&
            (l.estrato == 1 || l.estrato == 2) &&
            l.grado == 11 && l.estado == true) {
          print('Lista de seleccionados:');
          print('\nDocumento: ${l.documento}');
          print('Nombre: ${l.nombre}');
          print('Apellido: ${l.apellido}');
          print('Edad: ${l.edad}');
          print('Dirección: ${l.direccion}');
          print('Estrato: ${l.estrato}');
          print('Telefono: ${l.telefono}');
          print('Sisben: ${l.sisben}');
          print('Grado: ${l.grado}');
          print('Estado: Activo');
          edades.add(l.edad);
          contador++;
        }
      }
      if(contador == 0) {
        print('No se han seleccionado participantes');
      }
      if(edades.isNotEmpty) {
      int suma = 0;
      for (int i = 0; i < edades.length; i++) {
        suma = suma + edades[i];
      }
      double promedio = suma / edades.length;
      print('El promedio de edad de los participantes seleccionados es: ${promedio}');
    }
    } else{
      print('No hay registros de participantes para seleccionar');
    } 
  }


    static inhabilitadoParticipante() {
    int contador = 0;

    if (Participante.participantes.isNotEmpty) {
      for (var l in Participante.participantes) {

        if (l.estado == false) {
          print('Lista de inhabilitados:');
          print('\nDocumento: ${l.documento}');
          print('Nombre: ${l.nombre}');
          print('Apellido: ${l.apellido}');
          contador++;
        }
      }
      if(contador == 0) {
        print('No hay participantes inhabilitados');
      }
    } else{
      print('No hay registros de participantes para seleccionar');
    } 
  }
}
