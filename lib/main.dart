import 'package:flutter/material.dart';
import 'package:mini_zoo/screens/login/login_screen.dart';
import 'package:mini_zoo/screens/splash/introl_screen.dart';
import 'package:mini_zoo/screens/splash/splash_screen.dart';
import 'package:mini_zoo/utils/app_constants.dart';
import 'package:mini_zoo/utils/preference_utils.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  runApp(const MyApp());

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ezoo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.orange,
        fontFamily: 'Poppins'
      ),
      home:Prefs.getBool(AppConstants.isReachedToLoginPage) == true ? const LoginScreen() : const SplashScreen(),
      routes: {
        IntroScreenDefault.routeName: (ctx) =>  IntroScreenDefault(),
        LoginScreen.routeName: (ctx) => const LoginScreen()
      },
    );
  }
}

