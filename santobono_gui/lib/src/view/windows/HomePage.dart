import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:santobono_gui/src/view/widget/SmallAppBar.dart';
import 'package:santobono_gui/src/view/widget/Home/InfoReparti.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SmallAppBar(title: 'Home'),
      body: Column(children: <Widget>[InfoReparti()]),
    );
  }
}
