import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../utils/app_color.dart';
import '../../utils/asset_urls.dart';
import '../../utils/utils.dart';
import 'package:mini_zoo/generated/l10n.dart';

class PhoneVerificationScreen extends StatefulWidget {
  static var routeName = "/phoneVerification";

  const PhoneVerificationScreen({Key? key}) : super(key: key);

  @override
  State<PhoneVerificationScreen> createState() => _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 50),
              Stack(
                children: [
                  Align(
                    alignment: Utils.isEnglish(context) ? Alignment.topLeft : Alignment.topRight,
                    child: Utils.isEnglish(context)? IconButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        }
                        , icon: const Icon(Icons.arrow_back_ios,color: Color(AppColor.blackColor))
                    ) : IconButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        }
                        , icon: const Icon(Icons.arrow_back_ios,color: Color(AppColor.blackColor),)
                    ),
                  ),
                  Center(child: Image.asset(AssetUrls.phoneVerifyIcon,width: 250,height: 300,fit: BoxFit.fill)),

                ],
              ),
              Text(S.of(context).verification,textAlign: TextAlign.center,style: const TextStyle(color: Color(AppColor.blackColor),fontSize: 25,fontFamily: "Nunito"),),
              const SizedBox(height: 15,),
              Text(S.of(context).verification_subtitle,style: const TextStyle(color:Color(AppColor.blackColor)),textAlign: TextAlign.center),
              const SizedBox(height: 20,),

              Text(S.of(context).code_expire,style: const TextStyle(color:Color(AppColor.lightRed)),textAlign: TextAlign.center),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left:30.0,right: 30.0),
                child: Center(
                  child: PinCodeTextField(
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    backgroundColor: Colors.white,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(10),
                      borderWidth: 1,
                      selectedFillColor: Colors.white,
                      selectedColor: const Color(AppColor.lightRed),
                      inactiveColor: const Color(AppColor.lightRed),
                      inactiveFillColor: Colors.white,
                      fieldHeight: 60,
                      fieldWidth: 60,
                      activeFillColor: Colors.white,
                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    errorAnimationController: null,
                    controller: null,
                    onCompleted: (v) {

                    },
                    onChanged: (value) {

                    },
                    beforeTextPaste: (text) {
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    }, appContext: context,
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text(S.of(context).no_code,style: const TextStyle(color:Colors.black54),),
                  TextButton(onPressed: (){

                  }, child: Text(S.of(context).send_again,style: const TextStyle(color: Color(AppColor.lightOrange),fontWeight: FontWeight.w600),))
                ],
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
                      child:  Padding(
                        padding: const EdgeInsets.only(top: 13.0,bottom: 13.0),
                        child: Text(S.of(context).continue_title,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,)
            ],
          ),
        ),
      ),
    );
  }
}
