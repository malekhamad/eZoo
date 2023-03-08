import 'package:flutter/material.dart';
import 'package:mini_zoo/screens/login/check_your_email_screen.dart';
import 'package:mini_zoo/screens/login/phone_verification.dart';
import 'package:mini_zoo/utils/asset_urls.dart';
import 'package:mini_zoo/widgets/edit_text_widget.dart';

import '../../utils/app_color.dart';
import '../../utils/utils.dart';
import 'package:mini_zoo/generated/l10n.dart';

class ForgetPasswordScreen extends StatefulWidget {
  static var routeName = "/forgetPassword";

  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 70),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child:Utils.isEnglish(context)? IconButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        }
                        , icon: const Icon(Icons.arrow_back_ios,color: Color(AppColor.blackColor),)
                    ) : IconButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        }
                        , icon: const Icon(Icons.arrow_back_ios,color: Color(AppColor.blackColor),)
                    ) ,),
                  Flexible(
                    flex: 4,
                    child: Center(child: Text(S.of(context).forget_password_title,textAlign: TextAlign.center,style: const TextStyle(color: Color(AppColor.blackColor),fontSize: 25,fontFamily: "Nunito"),)),
                  )

                ],
              ),
              Image.asset(AssetUrls.splashLogoImage,width: 250,height: 250,fit: BoxFit.fill),
              const SizedBox(height: 20,),
              Text(S.of(context).forget_password_subtitle,style: const TextStyle(color:Colors.black54),textAlign: TextAlign.center,),
              const SizedBox(height: 20,),
              EditTextWidget(hintText: S.of(context).enter_email,keyboardType: TextInputType.emailAddress,textInputAction: TextInputAction.done,iconUrl: AssetUrls.smsIcon),
              const SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0,right: 16.0),
                  child: Expanded(
                    child: ElevatedButton(onPressed: (){
                      /// Todo : make verification when you send email verification
                         Navigator.pushNamed(context, CheckYourEmailScreen.routeName);
                    },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(AppColor.darkOrange),
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.only(top: 13.0,bottom: 13.0),
                        child: Text(S.of(context).send_to_email,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              EditTextWidget(hintText: S.of(context).phone_hint,keyboardType: TextInputType.phone,textInputAction: TextInputAction.done,iconUrl: AssetUrls.phoneIcon),
              const SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0,right: 16.0),
                  child: Expanded(
                    child: ElevatedButton(onPressed: (){
                      /// Todo : make verification when you send email verification
                      Navigator.pushNamed(context, PhoneVerificationScreen.routeName);
                    },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(AppColor.darkOrange),
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.only(top: 13.0,bottom: 13.0),
                        child: Text(S.of(context).send_to_phone,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50,)



            ],
          ),
        ),
      ),
    );
  }
}
