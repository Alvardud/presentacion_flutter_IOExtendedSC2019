import 'package:flutter_web/material.dart';
//import 'package:flutter_web/services.dart';
import 'package:presentacion_iosc2019/slides/inicialPresentacion.dart';
import 'package:presentacion_iosc2019/slides/gracias.dart';
import 'package:presentacion_iosc2019/slides/presentacionPersonal.dart';
import 'package:presentacion_iosc2019/slides/queEsFlutter.dart';
import 'package:presentacion_iosc2019/slides/lenguajeProgramacion.dart';
import 'package:presentacion_iosc2019/slides/caracteristicasDart.dart';
import 'package:presentacion_iosc2019/slides/estructura.dart';
import 'package:presentacion_iosc2019/slides/componentesFamiliaGoogle.dart';
import 'package:presentacion_iosc2019/slides/presentacionTitulos.dart';
import 'package:presentacion_iosc2019/slides/materialDesign.dart';
/*
import 'package:presentacion_flutter/screens/slides/todosEntornos.dart';
import 'package:presentacion_flutter/screens/slides/Fuchsia.dart';
import 'package:presentacion_flutter/screens/slides/Entornos.dart';
import 'package:presentacion_flutter/screens/common/SlideUnaImagen.dart';
import 'package:presentacion_flutter/screens/slides/HerramientasNativas.dart';
import 'package:presentacion_flutter/screens/slides/EjemploFlare.dart';
import 'package:presentacion_flutter/screens/slides/EjemploAnimacion.dart';
import 'package:presentacion_flutter/screens/slides/TodoWidget.dart';
import 'package:presentacion_flutter/screens/InformacionPersonalLinks.dart';
*/

void main()=>
    runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Aplication(),
      ),
    );
  }
}

class Aplication extends StatefulWidget {
  @override
  _AplicationState createState() => _AplicationState();
}

class _AplicationState extends State<Aplication>with TickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 10, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: TabBarView(
        controller: _tabController,
        children: <Widget>[
          InicialPresentacion(),
          PresentacionPersonal(),
          QueEsFlutter(),
          LenguajeProgramacion(),
          CaracteristicasDart(),
          Estructura(),
          PresentacionTitulos(titulo: 'Herramienta Enfocada \nen UI',),
          MaterialDesign(),
          //Cupertino
          ComponentesFamiliaGoogle(),
          Gracias(),
          /*
          SlideUnaImagen(titulo: 'Aplicaciones Moviles',imageHeigth: 300.0,imageWidth: 400.0,direccion: 'assets/Flutter-3.jpg',),//AplicacionesMoviles(),
          SlideUnaImagen(titulo: 'Aplicaciones de Escritorio',imageHeigth: 300.0,imageWidth: 400.0,direccion: 'assets/escritorio.png',),//AplicacionesEscritorio(),
          SlideUnaImagen(titulo: 'HummingBird',imageHeigth: 180.0,imageWidth: 600.0,direccion: 'assets/hummingbird.png',),//HummingBird(),
          TodosEntornos(),   //IOS, Android, Web, Windows, Linux
          Fuchsia(),
          Entornos(),   //AndroidStudio, Vscode, Xcode
          TodoWidget(),
          //-----CatalogoWidgets
          SlideUnaImagen(titulo: 'Catalogo Widgets',imageWidth: 300.0,imageHeigth: 400.0,direccion: 'assets/catalogo1.png',),
          SlideUnaImagen(titulo: 'Catalogo Widgets',imageWidth: 300.0,imageHeigth: 400.0,direccion: 'assets/catalogo2.png',),
          SlideUnaImagen(titulo: 'Sintaxis Sencilla',imageHeigth: 300.0,imageWidth: 400.0,direccion: 'assets/codigo.png',),//EjemploSintaxis
          HerramientasNativas(),
          EjemploAnimacion(),   //--------------------
          EjemploFlare(),
          InformacionPersonalLinks()*/
        ],
      ),
    );
  }
}