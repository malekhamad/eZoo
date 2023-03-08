import 'package:flutter/material.dart';
import 'package:mini_zoo/enums/LanguageCode.dart';

class Utils{

  static bool isEnglish(BuildContext context){
    return Localizations.localeOf(context).languageCode == LanguageCode.en.toString();
  }
}