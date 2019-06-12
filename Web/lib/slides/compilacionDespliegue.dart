import 'package:flutter_web/material.dart';
import 'package:presentacion_iosc2019/widgets/common.dart';

class CompilacionDespliegue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EstructuraSlide(
      cuerpo: Cuerpo(),
      title: 'Compilacion, Despliegue y Paquete',
    );
  }
}

class Cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - (105 + 52),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(bottom: 8.0, left: 32.0, right: 32.0, top: 64.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(child: Center(child: TextoIzquierda())),
          Expanded(child: Center(child: TextoDerecha())),
        ],
      ),
    );
  }
}

class TextoIzquierda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CommonText(
                    texto: '*  dartdevc (desarrollo)',
                    color: Colors.black54,
                    size: 28.0),
                CommonText(
                    texto: '    Dart to JavaScript (incremental)',
                    color: Colors.black54,
                    size: 20.0),
                CommonText(
                    texto: '    webdev (package)',
                    color: Colors.black54,
                    size: 20.0)
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CommonText(
                    texto: '*  dart2js (despliegue)',
                    color: Colors.black54,
                    size: 28.0),
                CommonText(
                    texto: '    Dart to JavaScript',
                    color: Colors.black54,
                    size: 20.0),
                CommonText(
                    texto: '    webdev serve (--release)',
                    color: Colors.black54,
                    size: 20.0),
              ],
            ),
          ),
        ]);
  }
}

class TextoDerecha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CommonText(
                    texto: '*  pub (Dart package manager)',
                    color: Colors.black87,
                    size: 32.0),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CommonText(
                    texto: '*  webdev',
                    color: Colors.black54,
                    size: 28.0),
                CommonText(
                    texto: '    construye, compila y despliega',
                    color: Colors.black54,
                    size: 20.0)
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CommonText(
                    texto: '*  stagehand',
                    color: Colors.black54,
                    size: 28.0),
                CommonText(
                    texto: '    genera proyectos web en dart',
                    color: Colors.black54,
                    size: 20.0)
              ],
            ),
          ),
        ]);
  }
}
