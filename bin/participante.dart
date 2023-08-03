import 'dart:io';
import 'validacion.dart';

class Participante {
  int documento;
  String nombre;
  String apellido;
  int edad;
  String direccion;
  int estrato;
  String telefono;
  String sisben;
  int grado;
  bool estado;

  static List<Participante> participantes = [];

  Participante(
      this.documento,
      this.nombre,
      this.apellido,
      this.edad,
      this.direccion,
      this.estrato,
      this.telefono,
      this.sisben,
      this.grado,
      this.estado);

  static Participante? validarRegistro(int documento, List<Participante> listaParticipantes) {
    for (var p in listaParticipantes) {
      if (documento == p.documento) {
        return p;
      }
    }
    return null;
  }

  static inscribir() {
    int documento = validarDocumento();
    if (validarRegistro(documento, participantes) != null) {
      print('El participante ya está registrado');
    } else {
      String nombre = validarNombre();
      String apellido = validarApellido();
      int edad = validarEdad();
      String direccion = validarDireccion();
      int estrato = validarEstrato();
      String telefono = validarTelefono();
      String sisben = validarSisben();
      int grado = validarGrado();

      var inscripcion = Participante(documento, nombre, apellido, edad,
          direccion, estrato, telefono, sisben, grado, true);
      participantes.add(inscripcion);
    }
  }

  static listarParticipantes() {
    print('Lista de participantes');
    if (participantes.isNotEmpty) {
      int activos = 0;
      int inactivos = 0;
      for (var p in participantes) {
        if (p.estado == true) {
          print('\nDocumento: ${p.documento}');
          print('Nombre: ${p.nombre}');
          print('Apellido: ${p.apellido}');
          print('Edad: ${p.edad}');
          print('Dirección: ${p.direccion}');
          print('Estrato: ${p.estrato}');
          print('Telefono: ${p.telefono}');
          print('Sisben: ${p.sisben}');
          print('Grado: ${p.grado}');
          print('Estado: Activo');
          activos++;
        } else {
          inactivos++;
        }
      }
      print('Número de participantes activos: $activos');
      print('Número de participantes inactivos: $inactivos');
    } else {
      print('No hay participantes registrados');
    }
  }

  static consultarParticipante() {
    int documento = validarDocumento();
    var result = validarRegistro(documento, participantes);
        if (result != null) {
          print('\nDocumento: ${result.documento}');
          print('Nombre: ${result.nombre}');
          print('Apellido: ${result.apellido}');
          print('Edad: ${result.edad}');
          print('Dirección: ${result.direccion}');
          print('Estrato: ${result.estrato}');
          print('Telefono: ${result.telefono}');
          print('Sisben: ${result.sisben}');
          print('Grado: ${result.grado}');
          if(result.estado == true){
            print('Estado: Activo');
          }
          else{
            print('Estado: Inactivo');
          }
        }
      }
  
  static cambiarEstado() {
    int documento = validarDocumento();
    Participante? result = validarRegistro(documento, participantes);
    if (result != null) {
      if (result.estado == true) {
        result.estado = false;
        print('El participante ha sido inhabilitado');
      } else {
        result.estado = true;
        print('El participante ha sido habilitado');
      }
    } else {
      print('No se encontaron coincidencias');
    }
  }

  static editar() {
    print('Editar inscripción');
    int documento = validarDocumento();
    Participante? result = validarRegistro(documento, participantes);
    if (result != null) {
      validarEditarNombre(result);
      validarEditarApellido(result);
      validarEditarTelefono(result);
      print('Datos editados correctamente');
    } else {
      print('No se encontaron coincidencias');
    }
  }
}

menu() {
  print('╔══════════════════════════════════════════╗');
  print('║                 Menú                     ║');
  print('║══════════════════════════════════════════║');
  print('║ 1. Registro del participante             ║');
  print('║ 2. Consulta de participantes             ║');
  print('║ 3. Consulta por participante             ║');
  print('║ 4. Edición de datos                      ║');
  print('║ 5. Inhabilitar/habilitar participante    ║');
  print('║ 6. Reporte de seleccionados              ║');
  print('║ 7. Reporte de inhabilitados              ║');
  print('║ 8. Salir                                 ║');
  print('╚══════════════════════════════════════════╝');

  print('\nIngrese una opción:');
}

validarEditarNombre(result) {
  bool estado = true;
  RegExp letrasResExp = RegExp(r'^[A-Za-z]+$');
  print('Ingrese el nuevo nombre');
  do {
    String nombre = stdin.readLineSync()!;
    if (!letrasResExp.hasMatch(nombre)) {
      print('El nombre debe contener solo letras');
    } else {
      result.nombre = nombre;
      estado = false;
    }
  } while (estado);
}

validarEditarApellido(result) {
  bool estado = true;
  RegExp letrasResExp = RegExp(r'^[A-Za-z]+$');
  print('Ingrese el nuevo apellido');
  do {
    String apellido = stdin.readLineSync()!;
    if (!letrasResExp.hasMatch(apellido)) {
      print('El apellido debe contener solo letras');
    } else {
      result.apellido = apellido;
      estado = false;
    }
  } while (estado);
}

validarEditarTelefono(result) {
  bool estado = true;
  RegExp numeroResExp = RegExp(r'^[0-9]+$');
  print('Ingrese el nuevo telefono');
  do {
    String telefono = stdin.readLineSync()!;
    if (!numeroResExp.hasMatch(telefono)) {
      print('El telefono debe contener solo números');
    } else {
      result.telefono = telefono;
      estado = false;
    }
  } while (estado);
}
