import 'package:flutter/material.dart';

class TextPreHome extends StatelessWidget {
  const TextPreHome({super.key});
  // L’altezza “preferita” per un AppBar standard

  //TODO mettere uno stile per il teso uguale per tutti
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Rimani Aggiornato',
          style: TextStyle(
            fontSize: MediaQuery.sizeOf(context).height > 850 ? 26 : 22,
            fontWeight: FontWeight.bold,
            color:
                Theme.of(context).colorScheme.primary, // Colore marrone scuro
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
            fontSize: MediaQuery.sizeOf(context).height > 850 ? 16 : 13,
            color: Theme.of(context).colorScheme.secondary, // Colore blu scuro
          ),
        ),
      ],
    );
  }
}
