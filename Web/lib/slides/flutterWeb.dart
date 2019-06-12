import 'package:flutter_web/material.dart';
import 'package:presentacion_iosc2019/widgets/common.dart';

class FlutterWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: [
              Colors.blue[800],
              Colors.blue[800],
              Colors.blue[800],
              Colors.blue[800],
              Colors.blue[800],
              Colors.blue[600],
              Colors.blue[400],
              Colors.blue[200],
              Colors.blue[100],
            ]),
      ),
      child: Center(
        child: Cuerpo(),
      ),
    );
  }
}

class Cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CommonText(
          texto: 'Flutter Web',
          color: Colors.white,
          size: 64.0,
        ),
        SizedBox(
          height: 24.0,
        ),
        CommonText(
          texto: '(previsualizacion disponible)',
          color: Colors.blue[300],
          size: 48.0,
        ),
        SizedBox(
          height: 120.0,
        ),
        Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(100.0)),
          child: Center(
            child: Container(
              width: 150.0,
              height: 150.0,
              child: FlutterLogo(
                size: 150.0,
              ),
            ),
          ),
        )
      ],
    );
  }
}
