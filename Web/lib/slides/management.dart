import 'package:flutter_web/material.dart';
import 'package:presentacion_iosc2019/widgets/common.dart';

class Management extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EstructuraSlide(
      title: 'Arquitectura y Manejo',
      cuerpo: Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - (105 + 52),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 32.0,vertical:64.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(child: Texto()),
          ),
          Expanded(
            child: Container(
              height: 280.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/bloc.png'),
                  ),
                ),
              ),
            ),
          )
        ],
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
            child: CommonText(
                texto: '*  Redux',
                color: Colors.black54,
                size: 28.0),
          ),
          Expanded(
            child: CommonText(
                texto: '*  BLoC pattern',
                color: Colors.black54,
                size: 28.0),
          ),
          Expanded(
            child: CommonText(
                texto: '*  Inherited Widget',
                color: Colors.black54,
                size: 28.0),
          ),
          Expanded(
            child: CommonText(
                texto: '*  Vanilla',
                color: Colors.black54,
                size: 28.0),
          ),
        ]);
  }
}
