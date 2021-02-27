import 'package:flutter/material.dart';
import 'package:preferenciasusuario/src/pages/home_page.dart';
import 'package:preferenciasusuario/src/pages/settings_page.dart';
import 'package:preferenciasusuario/src/share_prefs/preferencias_usuarios.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  final prefs = new PreferenciasUsuario();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routeName    : (BuildContext context) => HomePage(),
        SettingPage.routeName : (BuildContext contex) => SettingPage()
      },
    );
  }
}
