import 'package:flutter/material.dart';
import 'package:mini_zoo/utils/app_color.dart';


class PasswordTextFormWidget extends StatefulWidget {
  final String hintText ;
  final TextInputType keyboardType ;
  final TextInputAction textInputAction ;
  final String iconUrl ;
  final int color ;
   PasswordTextFormWidget({Key? key,required this.hintText, this.keyboardType = TextInputType.text, this.textInputAction = TextInputAction.next, required this.iconUrl,  this.color = AppColor.lightRed}) : super(key: key);

  @override
  State<PasswordTextFormWidget> createState() => _PasswordTextFormWidgetState();
}

class _PasswordTextFormWidgetState extends State<PasswordTextFormWidget> {
  bool _isObsecure = true ;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        Padding(
            padding: const EdgeInsets.all(16.0),
            child:Image.asset(widget.iconUrl,
                width: 25,
                height: 25
                ,color: Color(widget.color
                )
            )
        ),
        const SizedBox(width: 20),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
                hintText: widget.hintText,
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObsecure ? Icons.visibility_off : Icons.visibility
                    ,color: const Color(AppColor.lightOrange),),onPressed: (){
                  setState(() {
                    _isObsecure = !_isObsecure ;
                  });
                },
                )
            ),
            obscureText: _isObsecure,
            textInputAction: widget.textInputAction,
            keyboardType: widget.keyboardType,
          ),
        ),
        const SizedBox(width: 20)
      ],
    );
  }
}
