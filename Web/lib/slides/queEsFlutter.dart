import 'package:flutter_web/material.dart';
import 'package:presentacion_iosc2019/widgets/common.dart';

class QueEsFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EstructuraSlide(
      title: "Que es Flutter?",
      cuerpo: Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-(105+52),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 24.0,horizontal: 40.0),
      child: Row(
        children: <Widget>[
          Contenedortexto(),
          Container(
            width: 500.0,
            height: 500.0,
            child: Center(
            child: Image.asset('images/Flutter-3.jpg',fit: BoxFit.contain,),),)
        ],
      ),
    );
  }
}

class Contenedortexto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CommonText(texto:'Flutter es el Sdk para movil \nde Google',color: Colors.blue[800],size:54.0),
        Padding(padding: EdgeInsets.symmetric(vertical:16.0),),
        CommonText(
          texto: 'Ayuda a los desarrolladores a crear '+
            '\nexperiencias nativas de alta calidad en '+
            '\nplataformas móviles en un tiempo récord.',
          color: Colors.black54,
          size: 28.0,),
      ],
    );
  }
}