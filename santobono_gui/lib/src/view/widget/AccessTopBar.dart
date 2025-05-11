import 'package:flutter/material.dart';
import 'package:santobono_gui/src/utils/AppInfo.dart';

class AccessTopBar extends StatelessWidget {
  const AccessTopBar({super.key});
  // L’altezza “preferita” per un AppBar standard

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity, //MediaQuery.of(context).size.height * 0.55,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 223, 11, 32), // rosso profondo
            Color(0xFF003D54), // blu petrolio
            Color.fromARGB(255, 223, 11, 32), // rosa acceso
          ],
          stops: [0.0, 0.6, 1.0],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60),
          bottomRight: Radius.circular(60),
        ),
      ),
    );
  }
}
