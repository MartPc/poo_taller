import 'dart:io';

int validarDocumento() {
  bool estado = true;
  int convertirDocumento = 0;
  RegExp numeroResExp = RegExp(r'^[0-9]+$');
  print('Ingrese el número de documento del participante');
  do {
    String edad = stdin.readLineSync()!;
    if(edad == ''){
      print('El documento es obligatorio');
    }
    else if (!numeroResExp.hasMatch(edad)) {
      print('El documento debe contener solo números');
    } else {
      convertirDocumento = int.parse(edad);
      if(convertirDocumento <= 0){
        print('El documento no puede ser menor a cero');
      }else{
        estado = false;
    }}
  } while (estado);

  return convertirDocumento;
}

String validarNombre(){
  bool estado = true;
  String nombre = "";
  RegExp letrasResExp = RegExp(r'^[A-Za-z]+$');
  print('Ingrese el nombre:');
  do {
    String inputNombre = stdin.readLineSync()!;
    if(inputNombre == ''){
      print('El nombre es obligatorio');
    }
    else if (!letrasResExp.hasMatch(inputNombre)) {
      print('El nombre debe contener solo letras');
    } else {
      nombre = inputNombre;
      estado = false;
    }
  } while (estado);

  return nombre;
}

String validarApellido() {
  bool estado = true;
  String apellido = '';
  RegExp letrasResExp = RegExp(r'^[A-Za-z]+$');
  print('Ingrese el apellido');
  do {
    String inputApellido = stdin.readLineSync()!;
    if(inputApellido == ''){
        print('El nombre es obligatorio');
    }
    else if (!letrasResExp.hasMatch(inputApellido)) {
      print('El apellido debe contener solo letras');
      estado = true;
    } else {
      apellido = inputApellido;
      estado = false;
    }
  } while (estado);

  return apellido;
}

int validarEdad() {
  bool estado = true;
  int convertirEdad = 0;
  RegExp numeroResExp = RegExp(r'^[0-9]+$');
  print('Ingrese la edad');
  do {
    String edad = stdin.readLineSync()!;
    if(edad == ''){
      print('La edad es obligatoria');
    }
    else if (!numeroResExp.hasMatch(edad)) {
      print('La edad debe contener solo números');
    } else {
      convertirEdad = int.parse(edad);
      if(convertirEdad <= 0){
        print('La edad no puede ser menor a cero');
      }else{
        estado = false;
    }}
  } while (estado);

  return convertirEdad;
}

String validarDireccion(){
  String direccion = '';
  bool estado = true;
  print('Ingrese la dirección');
  do{
  String inputDireccion = stdin.readLineSync()!;
  if(inputDireccion == ''){
      print('La dirección es obligatoria');
    }else{
      estado = false;
      direccion = inputDireccion;
    }
  }while(estado);

  return direccion;
}

int validarEstrato() {
  bool estado = true;
  int convertirEstrato = 0;
  RegExp numeroResExp = RegExp(r'^[0-9]+$');
  print('Ingrese el estrato');
  do {
    String estrato = stdin.readLineSync()!;
    if(estrato == ''){
      print('El estrato es obligatorio');
    }
    else if (!numeroResExp.hasMatch(estrato)) {
      print('El estrato debe contener solo números');
    } else {
      convertirEstrato = int.parse(estrato);
      if(convertirEstrato <= 0){
        print('El estrato no puede ser menor a cero');
      }else{
        estado = false;
    }}
  } while (estado);

  return convertirEstrato;
}

String validarTelefono() {
  bool estado = true;
  String telefono = '';
  RegExp numeroResExp = RegExp(r'^[0-9]+$');
  print('Ingrese el telefono');
  do {
    String inputTelefono = stdin.readLineSync()!;
    if(inputTelefono == ''){
          print('El telefono es obligatorio');
        }
    else if (!numeroResExp.hasMatch(inputTelefono)) {
      print('El telefono debe contener solo números');
    } else {
      estado = false;
      telefono = inputTelefono;
    }
  } while (estado);
  return telefono;
}


int validarGrado() {
  bool estado = true;
  int convertirGrado = 0;
  RegExp numeroResExp = RegExp(r'^[0-9]+$');
  print('Ingrese el grado de (1 a 11):');
  do {
    String grado = stdin.readLineSync()!;
    if(grado == ''){
      print('El grado es obligatorio');
    }
    else if (!numeroResExp.hasMatch(grado)) {
      print('La edad debe contener solo números');
    } else {
      convertirGrado = int.parse(grado);
      if(convertirGrado >= 1 && convertirGrado <= 11){
        estado = false;
      }else{
        print('Grado incorrecto. (Rango permitido 1 - 11)');
    }}
  } while (estado);

  return convertirGrado;
}

String validarSisben(){
  List datos = ['A', 'B', 'C', 'D'];
  bool estado = true;
  String sisben = "";
  RegExp letrasResExp = RegExp(r'^[A-Za-z]+$');
  print('Ingrese el sisben (A, B, C, D)');
  do {
    String inputSisben = stdin.readLineSync()!;
    if(inputSisben == ''){
      print('El sisben es obligatorio');
    }
    else if (!letrasResExp.hasMatch(inputSisben)) {
      print('Solo se permiten letras (A, B, C, D)');
    } else {
        if(datos.contains(inputSisben)){
          sisben = inputSisben;
          estado = false;
        }else{
          print('Letra incorrecta');
        }
      }
  } while (estado);

  return sisben;
}