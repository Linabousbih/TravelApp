import 'package:first_one/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';

class AppLayout{
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
}