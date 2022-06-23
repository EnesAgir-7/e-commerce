import 'package:ea_software/constants/global_variables.dart';
import 'package:ea_software/features/auth/screens/auth_screen.dart';
import 'package:ea_software/providers/user_provider.dart';
import 'package:ea_software/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EA Software',
      theme: ThemeData(scaffoldBackgroundColor: GlobalVariables.backgroundColor, colorScheme: const ColorScheme.light(primary: GlobalVariables.secondaryColor), appBarTheme: const AppBarTheme(elevation: 0, iconTheme: IconThemeData(color: Colors.black))),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: AuthScreen(),
    );
  }
}
