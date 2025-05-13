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
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Theme.of(context).colorScheme.primary, // rosso profondo
            Theme.of(context).colorScheme.secondary, // blu petrolio
            Theme.of(context).colorScheme.primary, // rosa acceso // rosa acceso
          ],
          stops: [0.1, 0.55, 0.9],
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
