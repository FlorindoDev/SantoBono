import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:santobono_gui/src/view/widget/SmallAppBar.dart';
import 'package:santobono_gui/src/view/widget/Home/InfoReparti.dart';
import 'package:santobono_gui/src/view/widget/NavBar.dart';
import 'package:santobono_gui/src/view/widget/Home/Affolamento.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const double? padding = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      appBar: SmallAppBar(title: 'Home'),
      body: Column(
        children: <Widget>[
          const SizedBox(height: padding),
          Text(
            'Scopri di più su i nostri reparti:',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: padding),
          Center(child: InfoReparti()),
          const SizedBox(height: padding),
          Text(
            'Affollamento nel pronto Soccorso:',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          TriageLegend(),
        ],
      ),
    );
  }
}
