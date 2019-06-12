import 'package:flutter_web/material.dart';
import 'package:presentacion_iosc2019/widgets/common.dart';

class Escenarios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EstructuraSlide(
      cuerpo: Cuerpo(),
      title: 'Escenarios a futuro',
    );
  }
}

class Cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - (105 + 52),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(bottom: 8.0, left: 32.0,right: 32.0,top: 32.0),
      child: Center(
        child: Texto(),
      ),
    );
  }
}

class Texto extends StatelessWidget {
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
                    texto: '*  Aplicaciones Web Progresivas',
                    color: Colors.black54,
                    size: 28.0),
                CommonText(
                    texto: '    (Basado en Dispositivos)',
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
                    texto: '*  Contenido Interactivo Incrustado',
                    color: Colors.black54,
                    size: 28.0),
                CommonText(
                    texto: '    (Visualizacion de Datos)',
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
                    texto: '*  Contenido dinamico en apps moviles',
                    color: Colors.black54,
                    size: 28.0),
                CommonText(
                    texto: '    (Mejor integracion con aplicaciones moviles)',
                    color: Colors.black54,
                    size: 20.0)
              ],
            ),
          ),
          Expanded(
            child: Text(
              '   "Mejor Experiencia de Usuario"',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
          )
        ]);
  }
}
