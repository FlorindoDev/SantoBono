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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(24),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Theme.of(context).colorScheme.primary, // rosso profondo
                  Theme.of(context).colorScheme.secondary, // blu petrolio
                  Theme.of(context).colorScheme.primary, // rosa acceso
                ],
                stops: [0.2, 0.5, 0.9],
              ),
            ),
            child: Center(child: icon),
          ),
        ),
        SizedBox(height: 10),
        Text(reparto, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
