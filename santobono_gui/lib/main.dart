import 'package:flutter/material.dart';
import 'package:santobono_gui/src/utils/AppInfo.dart';
import 'package:santobono_gui/src/view/windows/MyAccessPage.dart';
import 'package:flutter/services.dart';
import 'package:santobono_gui/src/view/windows/HomePage.dart';

void main() async {
  // Inizializza i binding di Flutter prima di eseguire qualsiasi codice
  WidgetsFlutterBinding.ensureInitialized();

  // Consentie solo portrait up (verticale normale).
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppInfo.appName,
      theme: AppInfo.lightMode,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyAccessPage(),
        '/HomePage': (context) => const HomePage(),
      },
    );
  }
}
