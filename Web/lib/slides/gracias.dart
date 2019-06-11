import 'package:flutter_web/material.dart';
import 'package:presentacion_iosc2019/widgets/common.dart';

class Gracias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.blue[800],
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
        CommonText(texto: 'Thank you!',color: Colors.white,size: 64.0,),
        Container(height: 24.0,),
        CommonText(texto: 'flutter.dev',color: Colors.blue[300],size: 32.0,)
      ],
    );
  }
}