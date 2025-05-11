import 'package:flutter/material.dart';

class TextProHome extends StatelessWidget {
  const TextProHome({super.key});
  // L’altezza “preferita” per un AppBar standard

  //TODO AGGIUSARE IL TESTO E RENDERLO ADDATIVO
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Rimani Aggiornato',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFF6D1E3A), // Colore marrone scuro
          ),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
        Text(
          'Su questo portale puoi controllare tutte le\n'
          'nuove direttive e gli accessi al pronto soccorso\n'
          'per rimanere sempre aggiornato\n'
          'in tempo reale',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF2F4A5D), // Colore blu scuro
          ),
        ),
      ],
    );
  }
}
