import 'package:flutter/material.dart';
import 'package:mini_zoo/screens/splash/introl_screen.dart';
import 'package:mini_zoo/utils/app_color.dart';
import 'package:mini_zoo/utils/app_constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColor.splashColor),
        body: Stack(
          children:[ Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Padding(
                padding: const EdgeInsets.all(42.0),
                child: Image.asset(AppConstants.splashLogoImage),
              )
              )
            ],
          ),
            Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: IconButton(onPressed: (){
                    Navigator.pushNamed(context, IntroScreenDefault.routeName);
                  }
                 , icon: const Icon(Icons.arrow_circle_right_outlined,color: Colors.white,size: 50),
                  )
              ),
            )
          ]
        )

    );
  }
}
