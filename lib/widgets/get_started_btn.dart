import 'package:flutter/material.dart';
import 'package:mini_zoo/utils/app_color.dart';

import '../screens/splash/introl_screen.dart';

class StartedButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 60,
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
        const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text("Get Started",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Color(AppColor.blackColor)),),
        ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              width: 70,
              height: 40,
              decoration:  BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Transform.scale(scale: 1.5,child: IconButton(onPressed: (){
                Navigator.pushNamed(context, IntroScreenDefault.routeName);
              }, icon: const Icon(Icons.keyboard_double_arrow_right,color: Colors.white))),
            ),
          )
      ],
      ),
    );
  }
}
