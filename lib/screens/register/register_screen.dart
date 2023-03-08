import 'package:flutter/material.dart';
import 'package:mini_zoo/utils/app_color.dart';
import 'package:mini_zoo/generated/l10n.dart';
import 'package:mini_zoo/utils/utils.dart';

import '../../utils/asset_urls.dart';
import '../../widgets/edit_text_form_widget.dart';
import '../../widgets/password_text_form_widget.dart';

class RegisterScreen extends StatefulWidget {
  static var routeName = "/register";

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _form = GlobalKey<FormState>();

  void _saveForm(){
    _form.currentState?.save();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _form,
          child: SingleChildScrollView(
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
                      flex: 3,
                        child: Center(child: Text(S.of(context).register_wlc,textAlign: TextAlign.center,style: const TextStyle(color: Color(AppColor.blackColor),fontSize: 26,fontFamily: "Nunito"),)),
                    )

                  ],
                ),
                const SizedBox(height: 30,),
                Text(S.of(context).register_subtitle,style: const TextStyle(color:Colors.black54),),
                const SizedBox(height: 50,),
                EditTextFormWidget(hintText: S.of(context).name_hint,keyboardType: TextInputType.text,textInputAction: TextInputAction.done,iconUrl: AssetUrls.personIcon,color: AppColor.blackColor,),
                const SizedBox(height: 20),
                EditTextFormWidget(hintText: S.of(context).phone_hint,keyboardType: TextInputType.phone,textInputAction: TextInputAction.done,iconUrl: AssetUrls.phoneIcon,color: AppColor.blackColor),
                const SizedBox(height: 20),
                EditTextFormWidget(hintText: S.of(context).enter_email,keyboardType: TextInputType.emailAddress,textInputAction: TextInputAction.done,iconUrl: AssetUrls.smsIcon,color: AppColor.blackColor),
                const SizedBox(height: 20),
                PasswordTextFormWidget(hintText: S.of(context).enter_password,textInputAction: TextInputAction.done,iconUrl: AssetUrls.lockIcon,color: AppColor.blackColor),
                const SizedBox(height: 20),
                PasswordTextFormWidget(hintText: S.of(context).confirm_password,textInputAction: TextInputAction.done,iconUrl: AssetUrls.lockIcon,color: AppColor.blackColor),
                const SizedBox(height: 40),
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
                          child: Text(S.of(context).register,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text(S.of(context).have_account,style: const TextStyle(color:Colors.black54),),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text(S.of(context).log_in,style: const TextStyle(color: Color(AppColor.lightOrange),fontWeight: FontWeight.w600),))
                  ],
                ),
                const SizedBox(height: 20)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
