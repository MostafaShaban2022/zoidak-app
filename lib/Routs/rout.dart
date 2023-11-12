import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routs {
  static Routs instance = Routs();

  Future<dynamic> pushAndRemoveUntil({required Widget widget,required BuildContext context}) {
    return Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (ctx) => widget,
        ),
            (route) => false);
  }

  Future<dynamic> push({required Widget widget,required BuildContext context}) {
    return Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) => widget,
      ),);
  }}
