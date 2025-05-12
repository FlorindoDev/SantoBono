import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoCardReparti extends StatelessWidget {
  const InfoCardReparti({
    super.key,
    required this.onTap,
    required this.icon,
    required this.reparto,
  });

  final VoidCallback onTap;
  final SvgPicture icon;
  final String reparto;
  // L’altezza “preferita” per un AppBar standard

  //TODO: rendere borderRadius disponibile a tutti viene usato anche in AccessTopBar
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFDF0B20), // rosso profondo
              Color(0xFF003D54), // blu petrolio
              Color(0xFFDF0B20), // rosa acceso
            ],
            stops: [0.0, 0.6, 1.0],
          ),
        ),
        child: Center(child: icon),
      ),
    );
  }
}
