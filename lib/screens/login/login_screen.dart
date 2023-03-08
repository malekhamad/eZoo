import 'package:flutter/material.dart';
import 'package:mini_zoo/screens/login/forget_password_screen.dart';
import 'package:mini_zoo/screens/login/login_phone_screen.dart';
import 'package:mini_zoo/screens/register/register_screen.dart';
import 'package:mini_zoo/utils/app_color.dart';
import 'package:mini_zoo/utils/asset_urls.dart';
import 'package:mini_zoo/widgets/edit_text_form_widget.dart';
import 'package:mini_zoo/widgets/password_text_form_widget.dart';
import 'package:mini_zoo/generated/l10n.dart';

class LoginScreen extends StatefulWidget {
  static var routeName = "/login";

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _form = GlobalKey<FormState>();

  void _saveForm(){
    _form.currentState?.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding:const EdgeInsets.only(left: 16.0,right: 16.0,top: 16.0),
        child: Form(
          key: _form,
            child: SingleChildScrollView(
              child: Column(

                children:  [
                   const SizedBox(height: 100,),
                    Center(child: Text(S.of(context).welcome_msg,textAlign: TextAlign.center,style: const TextStyle(color: Color(AppColor.blackColor),fontSize: 26,fontFamily: "Nunito"),)),
                   const SizedBox(height: 40,),
                   EditTextFormWidget(hintText: S.of(context).enter_email,keyboardType: TextInputType.emailAddress,textInputAction: TextInputAction.done,iconUrl: AssetUrls.smsIcon,),
                   const SizedBox(height: 20,),
                   PasswordTextFormWidget(hintText: S.of(context).enter_password,textInputAction: TextInputAction.done,iconUrl: AssetUrls.lockIcon,),
                  const SizedBox(height: 8,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: TextButton(onPressed: (){
                        Navigator.pushNamed(context, ForgetPasswordScreen.routeName);
                      }, child:  Text(S.of(context).forget_password,style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 13
                      )
                        ,),

                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16.0),
                      child: Expanded(
                        child: ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(AppColor.darkOrange),
                            ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 13.0,bottom: 13.0),
                                child: Text(S.of(context).next,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                              ),
                          ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16.0),
                      child: Expanded(
                        child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(AppColor.lightRed),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.only(top: 13.0,bottom: 13.0),
                            child: Text(S.of(context).start_guest,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                       Text(S.of(context).no_account,style: const TextStyle(color:Colors.black54),),
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, RegisterScreen.routeName);
                      }, child: Text(S.of(context).register,style: const TextStyle(color: Color(AppColor.lightRed),fontWeight: FontWeight.w600),))
                      ],
                  ),
                  const SizedBox(height: 20,),
                   Center(child: Text(S.of(context).or_login_with,style: const TextStyle(color:Colors.black54),)),
                  const SizedBox(height: 20,),
                  SizedBox(width:70,height:70,child: IconButton(onPressed: (){
                    Navigator.pushNamed(context, LoginPhoneScreen.routeName);
                  }, icon: Image.asset(AssetUrls.phoneIcon,fit: BoxFit.fill),))
                ],
              ),
            )
        ),
      ),
    );
  }
}
