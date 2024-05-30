import 'package:flutter/material.dart';

// Define una constante para el color primario de la aplicación.
const kPrimaryColor = Color(0xFFFF7643);
// Define una constante para el color claro primario de la aplicación.
const kPrimaryLightColor = Color(0xFFFFECDF);
// Define una constante para un degradado de color primario.
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft, // El degradado empieza desde la esquina superior izquierda.
  end: Alignment.bottomRight, // El degradado termina en la esquina inferior derecha.
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)], // Colores del degradado.
);

// Define una constante para el color secundario de la aplicación.
const kSecondaryColor = Color(0xFF979797);
// Define una constante para el color del texto.
const kTextColor = Colors.black;

// Define una constante para la duración de las animaciones.
const kAnimationDuration = Duration(milliseconds: 200);

// Define un estilo de texto para los encabezados.
const headingStyle = TextStyle(
  fontSize: 24, // Tamaño de fuente.
  fontWeight: FontWeight.bold, // Peso de fuente (negrita).
  color: Colors.black, // Color del texto.
  height: 1.5, // Altura de línea.
);

// Define una duración predeterminada.
const defaultDuration = Duration(milliseconds: 250);

// Expresiones regulares y mensajes de error para la validación de formularios.

// Define una expresión regular para validar correos electrónicos.
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
// Define un mensaje de error para cuando el correo electrónico no está ingresado.
const String kEmailNullError = "Please Enter your email";
// Define un mensaje de error para cuando el correo electrónico no es válido.
const String kInvalidEmailError = "Please Enter Valid Email";
// Define un mensaje de error para cuando la contraseña no está ingresada.
const String kPassNullError = "Please Enter your password";
// Define un mensaje de error para cuando la contraseña es muy corta.
const String kShortPassError = "Password is too short";
// Define un mensaje de error para cuando las contraseñas no coinciden.
const String kMatchPassError = "Passwords don't match";
// Define un mensaje de error para cuando el nombre no está ingresado.
const String kNamelNullError = "Please Enter your name";
// Define un mensaje de error para cuando el número de teléfono no está ingresado.
const String kPhoneNumberNullError = "Please Enter your phone number";
// Define un mensaje de error para cuando la dirección no está ingresada.
const String kAddressNullError = "Please Enter your address";

// Define una decoración de entrada para el campo OTP (One Time Password).
final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 16), // Espaciado interno vertical.
  border: outlineInputBorder(), // Borde de la entrada.
  focusedBorder: outlineInputBorder(), // Borde cuando la entrada está enfocada.
  enabledBorder: outlineInputBorder(), // Borde cuando la entrada está habilitada.
);

// Función que retorna un 'OutlineInputBorder' personalizado.
OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16), // Bordes redondeados con un radio de 16.
    borderSide: const BorderSide(color: kTextColor), // Color del borde definido como 'kTextColor'.
  );
}
