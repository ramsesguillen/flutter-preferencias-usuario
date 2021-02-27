
import 'package:shared_preferences/shared_preferences.dart';

// https://pub.dev/packages/shared_preferences

class PreferenciasUsuario {

  static final PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  //GEt y SET del genero
  get genero {
    return _prefs.getInt('genero') ?? 1;
  }
  set genero( int value ) {
    _prefs.setInt('genero', value);
  }

  //GEt y SET del color secundario
  get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }
  set colorSecundario( bool value ) {
    _prefs.setBool('colorSecundario', value);
  }

  //GEt y SET del nombrUcusario
  get nombreUsuario {
    return _prefs.getString('nombreUsuario') ?? '';
  }
  set nombreUsuario( String value ) {
    _prefs.setString('nombreUsuario', value);
  }

  //GEt y SET del la última pagiana
  get ultimaPagina {
    return _prefs.getString('ultimaPagina') ?? 'home';
  }
  set ultimaPagina( String value ) {
    _prefs.setString('ultimaPagina', value);
  }


}
