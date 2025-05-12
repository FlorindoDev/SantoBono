import 'package:flutter/material.dart';

class AccessPageController {
  static void doLogin(dynamic context, bool isOspite) {
    if (!isOspite) {
      Navigator.pushNamed(context, '/HomePage');
    }
  }
}
