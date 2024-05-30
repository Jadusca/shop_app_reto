import 'package:flutter/widgets.dart';
// Importa la pantalla de productos de la aplicación.
import 'package:shop_app/screens/products/products_screen.dart';

// Importa diversas pantallas de la aplicación desde sus respectivas rutas.
import 'screens/cart/cart_screen.dart';
import 'screens/complete_profile/complete_profile_screen.dart';
import 'screens/details/details_screen.dart';
import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/init_screen.dart';
import 'screens/login_success/login_success_screen.dart';
import 'screens/otp/otp_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/splash/splash_screen.dart';

// Usamos rutas con nombre
// Todas nuestras rutas estarán disponibles aquí
final Map<String, WidgetBuilder> routes = {
  // Ruta para la pantalla de inicio
  InitScreen.routeName: (context) => const InitScreen(),
  // Ruta para la pantalla de presentación
  SplashScreen.routeName: (context) => const SplashScreen(),
  // Ruta para la pantalla de inicio de sesión
  SignInScreen.routeName: (context) => const SignInScreen(),
  // Ruta para la pantalla de recuperación de contraseña
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  // Ruta para la pantalla de éxito de inicio de sesión
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  // Ruta para la pantalla de registro
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  // Ruta para la pantalla de completar perfil
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  // Ruta para la pantalla de verificación por OTP
  OtpScreen.routeName: (context) => const OtpScreen(),
  // Ruta para la pantalla principal
  HomeScreen.routeName: (context) => const HomeScreen(),
  // Ruta para la pantalla de productos
  ProductsScreen.routeName: (context) => const ProductsScreen(),
  // Ruta para la pantalla de detalles del producto
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  // Ruta para la pantalla del carrito de compras
  CartScreen.routeName: (context) => const CartScreen(),
  // Ruta para la pantalla de perfil
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
