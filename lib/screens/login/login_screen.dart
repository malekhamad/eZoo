import 'package:flutter/material.dart';
import 'package:mini_zoo/utils/app_color.dart';
import 'package:mini_zoo/utils/app_constants.dart';
import 'package:mini_zoo/widgets/edit_text_form_widget.dart';

class LoginScreen extends StatelessWidget {
  static var routeName = "/login";

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding:const EdgeInsets.all(16.0),
        child: Form(
            child: SingleChildScrollView(
              child: Column(

                children:  [
                   const SizedBox(height: 60,),
                   const Center(child: Text("Welcome to\n ezoo",textAlign: TextAlign.center,style: TextStyle(color: Color(AppColor.blackColor),fontSize: 26,fontFamily: "Nunito"),)),
                   const SizedBox(height: 40,),
                   EditTextFormWidget(hintText: "Enter Your Email",keyboardType: TextInputType.emailAddress,textInputAction: TextInputAction.next,iconUrl: AppConstants.smsIcon,)
                ],
              ),
            )
        ),
      ),
    );
  }
}
