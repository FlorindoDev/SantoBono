import 'package:flutter/material.dart';
import 'package:santobono_gui/src/utils/AppInfo.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      child: Center(
        child: SvgPicture.asset(
          AppInfo.logoPath,
          width: MediaQuery.sizeOf(context).width * 0.4,
          height: MediaQuery.sizeOf(context).height * 0.2,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Theme.of(context).colorScheme.onPrimary,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
