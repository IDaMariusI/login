import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:login/screens/screens.dart';
import 'package:login/services/services.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Eliminar el título de Debug que siempre aparece cuando creas una nueva app
      debugShowCheckedModeBanner: false,
      title: 'Main App',
      initialRoute: 'login',
      routes: {
        'checking': (_) => CheckAuthScreen(),
        //Pantallas propias de la aplicación
        'home': (_) => HomeScreen(),
        //Pantalas de autenticación
        'login': (_) => LoginScreen(),
        'register': (_) => RegisterScreen(),
      },
      scaffoldMessengerKey: NotificationsService.messengerKey,
      //Temas para toda la app
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[300],
        appBarTheme: const AppBarTheme(elevation: 0, color: Colors.indigo),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            elevation: 0, backgroundColor: Colors.indigo),
      ),
    );
  }
}
