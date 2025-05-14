import 'package:flutter/material.dart';

//TODO: da rifare , questo widget è solo di presentazione del APP!!
class TriageLegend extends StatelessWidget {
  const TriageLegend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Definizione dei dati
    final items = [
      _LegendItem(
        color: Color(0xFF8B0000),
        label: 'Emergenza',
        attesa: 0,
        trattati: 2,
      ),
      _LegendItem(
        color: Color(0xFFFFA500),
        label: 'Urgenza',
        attesa: 6,
        trattati: 7,
      ),
      _LegendItem(
        color: Color(0xFF87CEEB),
        label: 'Urgenza Differibile',
        attesa: 0,
        trattati: 1,
      ),
      _LegendItem(
        color: Color(0xFF3CB371),
        label: 'Urgenza Minore',
        attesa: 0,
        trattati: 0,
      ),
      _LegendItem(
        color: Colors.white,
        label: 'Non Urgenza',
        attesa: 0,
        trattati: 0,
        border: true,
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Intestazione
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                SizedBox(width: 24), // spazio per il quadratino
                Expanded(
                  child: Text(
                    'Codici Triage',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                SizedBox(
                  width: 60,
                  child: Text(
                    'Attesa',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 60,
                  child: Text(
                    'Trattati',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          // Righe dei dati
          ...items.map((item) => _LegendRow(item: item)),
        ],
      ),
    );
  }
}

class _LegendItem {
  final Color color;
  final String label;
  final int attesa;
  final int trattati;
  final bool border;

  _LegendItem({
    required this.color,
    required this.label,
    required this.attesa,
    required this.trattati,
    this.border = false,
  });
}

class _LegendRow extends StatelessWidget {
  final _LegendItem item;

  const _LegendRow({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          // Quadrato colorato
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: item.color,
              border: item.border ? Border.all(color: Colors.black54) : null,
            ),
          ),
          const SizedBox(width: 8),
          // Label
          Expanded(child: Text(item.label)),
          // Colonna Attesa
          SizedBox(
            width: 60,
            child: Text(item.attesa.toString(), textAlign: TextAlign.center),
          ),
          // Colonna Trattati
          SizedBox(
            width: 60,
            child: Text(item.trattati.toString(), textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
