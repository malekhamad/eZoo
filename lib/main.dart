import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mini_zoo/screens/login/check_your_email_screen.dart';
import 'package:mini_zoo/screens/login/forget_password_screen.dart';
import 'package:mini_zoo/screens/login/login_phone_screen.dart';
import 'package:mini_zoo/screens/login/login_screen.dart';
import 'package:mini_zoo/screens/login/phone_verification.dart';
import 'package:mini_zoo/screens/register/register_screen.dart';
import 'package:mini_zoo/screens/splash/introl_screen.dart';
import 'package:mini_zoo/screens/splash/splash_screen.dart';
import 'package:mini_zoo/utils/key_preferences.dart';
import 'package:mini_zoo/utils/preference_utils.dart';
import 'generated/l10n.dart';


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
      locale: const Locale.fromSubtags(languageCode: 'ar'),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.orange,
        fontFamily: 'Poppins'
      ),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: Prefs.getBool(KeyPreferences.isReachedToLoginPage) == true ? const LoginScreen() : const SplashScreen(),
      routes: {
        IntroScreenDefault.routeName: (ctx) =>  IntroScreenDefault(),
        LoginScreen.routeName: (ctx) => const LoginScreen(),
        RegisterScreen.routeName: (ctx) => const RegisterScreen(),
        ForgetPasswordScreen.routeName: (ctx) => const ForgetPasswordScreen(),
        CheckYourEmailScreen.routeName: (ctx) => const CheckYourEmailScreen(),
        PhoneVerificationScreen.routeName: (ctx) => const PhoneVerificationScreen(),
        LoginPhoneScreen.routeName: (ctx) => const LoginPhoneScreen()
      },
    );
  }
}

