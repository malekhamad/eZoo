import 'package:flutter/material.dart';
import 'package:mini_zoo/utils/app_color.dart';


class EditTextFormWidget extends StatefulWidget {
  final String hintText ;
  final TextInputType keyboardType ;
  final TextInputAction textInputAction ;
  final String iconUrl ;
  final int color ;
  const EditTextFormWidget({Key? key,required this.hintText, this.keyboardType = TextInputType.text, this.textInputAction = TextInputAction.next, required this.iconUrl,this.color = AppColor.lightRed}) : super(key: key);

  @override
  State<EditTextFormWidget> createState() => _EditTextFormWidgetState();
}

class _EditTextFormWidgetState extends State<EditTextFormWidget> {

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
              ,color:  Color(widget.color
              )
          )
        ),
        const SizedBox(width: 20),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: widget.hintText
            ),
            textInputAction: widget.textInputAction,
            keyboardType: widget.keyboardType,
          ),
        ),
        const SizedBox(width: 20)
      ],
    );
  }
}
