import 'package:flutter/material.dart';
// Importa la pantalla de presentación (splash screen).
import 'package:shop_app/screens/splash/splash_screen.dart';

// Importa las rutas definidas en el archivo 'routes.dart'.
import 'routes.dart';
// Importa el tema de la aplicación desde el archivo 'theme.dart'.
import 'theme.dart';

// Función principal que se ejecuta al iniciar la aplicación.
void main() {
  // Ejecuta la aplicación Flutter, iniciando con el widget 'MyApp'.
  runApp(const MyApp());
}

// Define una clase que extiende de 'StatelessWidget'.
class MyApp extends StatelessWidget {
  // Constructor constante para la clase 'MyApp'.
  const MyApp({super.key});

  // Este widget es la raíz de tu aplicación.
  @override
  Widget build(BuildContext context) {
    // Retorna un widget 'MaterialApp' que configura la aplicación.
    return MaterialApp(
      // Oculta el banner de modo debug.
      debugShowCheckedModeBanner: false,
      // Establece el título de la aplicación.
      title: 'The Flutter Way - Template',
      // Aplica el tema de la aplicación usando el tema definido en 'AppTheme'.
      theme: AppTheme.lightTheme(context),
      // Establece la ruta inicial que se cargará al iniciar la aplicación.
      initialRoute: SplashScreen.routeName,
      // Define las rutas de la aplicación usando el mapa de rutas importado.
      routes: routes,
    );
  }
}
