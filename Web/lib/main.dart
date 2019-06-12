import 'package:flutter_web/material.dart';
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
import 'package:presentacion_iosc2019/slides/arquitecturaWeb.dart';
import 'package:presentacion_iosc2019/slides/escenarios.dart';
import 'package:presentacion_iosc2019/slides/compilacionDespliegue.dart';
import 'package:presentacion_iosc2019/slides/flutterWeb.dart';
import 'package:presentacion_iosc2019/slides/statelessStateful.dart';
import 'package:presentacion_iosc2019/slides/management.dart';
import 'package:presentacion_iosc2019/slides/providerA.dart';
import 'package:presentacion_iosc2019/slides/cupertinoD.dart';

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
    _tabController = TabController(length: 20, vsync: this);
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
          CupertinoD(),
          ComponentesFamiliaGoogle(),
          PresentacionTitulos(titulo: 'Administracion de Estado',),
          StatelessStateful(),
          Management(),
          ProviderA(),
          PresentacionTitulos(titulo: 'Y una cosa \nmas...',),
          FlutterWeb(),
          CompilacionDespliegue(), 
          ArquitecturaWeb(),
          Escenarios(),
          Gracias(),
        ],
      ),
    );
  }
}