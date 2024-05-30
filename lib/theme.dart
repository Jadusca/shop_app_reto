// Importa el paquete 'material' de Flutter que contiene widgets de material design y utilidades.
import 'package:flutter/material.dart';

import 'constants.dart';

// Define una clase que contiene la configuración del tema de la aplicación.
class AppTheme {
  // Define un método estático que toma un contexto de construcción y retorna un 'ThemeData'.
  static ThemeData lightTheme(BuildContext context) {
    // Retorna un objeto 'ThemeData' configurado con los siguientes parámetros.
    return ThemeData(
      // Establece el color de fondo del 'scaffold' a blanco.
      scaffoldBackgroundColor: Colors.white,
      // Establece la fuente predeterminada a "Muli".
      fontFamily: "Muli",
      // Configura el tema de la 'AppBar' con las siguientes propiedades.
      appBarTheme: const AppBarTheme(
        color: Colors.white,  // Color de fondo de la 'AppBar' blanco.
        elevation: 0,  // Sin sombra debajo de la 'AppBar'.
        iconTheme: IconThemeData(color: Colors.black),  // Color de los íconos de la 'AppBar' en negro.
        titleTextStyle: TextStyle(color: Colors.black),  // Estilo del texto del título en negro.
      ),
      // Configura el tema del texto en la aplicación.
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: kTextColor),  // Color del texto grande usando la constante 'kTextColor'.
        bodyMedium: TextStyle(color: kTextColor),  // Color del texto medio usando la constante 'kTextColor'.
        bodySmall: TextStyle(color: kTextColor),  // Color del texto pequeño usando la constante 'kTextColor'.
      ),
      // Configura el tema de decoración de entradas de texto.
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.always,  // Etiquetas flotantes siempre visibles.
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),  // Espaciado interno del contenido.
        enabledBorder: outlineInputBorder,  // Borde cuando la entrada está habilitada, definido más abajo.
        focusedBorder: outlineInputBorder,  // Borde cuando la entrada está enfocada, definido más abajo.
        border: outlineInputBorder,  // Borde general de la entrada, definido más abajo.
      ),
      // Ajusta la densidad visual para que se adapte a la plataforma.
      visualDensity: VisualDensity.adaptivePlatformDensity,
      // Configura el tema para los botones elevados.
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,  // Sin sombra debajo del botón.
          backgroundColor: kPrimaryColor,  // Color de fondo del botón usando la constante 'kPrimaryColor'.
          foregroundColor: Colors.white,  // Color del texto del botón en blanco.
          minimumSize: const Size(double.infinity, 48),  // Tamaño mínimo del botón.
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),  // Bordes redondeados con un radio de 16.
          ),
        ),
      ),
    );
  }
}

// Define una constante usada para decorar los bordes de las entradas de texto.
const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(28)),  // Bordes redondeados con un radio de 28.
  borderSide: BorderSide(color: kTextColor),  // Color del borde usando la constante 'kTextColor'.
  gapPadding: 10,  // Relleno del borde.
);
