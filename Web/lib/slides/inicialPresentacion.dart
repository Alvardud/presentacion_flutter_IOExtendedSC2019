import 'dart:math';
import 'package:flutter_web/material.dart';
import 'package:presentacion_iosc2019/widgets/common.dart';

class InicialPresentacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          LadoIzquierdo(),
          Positioned(
            left: MediaQuery.of(context).size.width / 1.6,
            bottom: -MediaQuery.of(context).size.height / 1.8,
            height: MediaQuery.of(context).size.height * 1.5,
            child: Transform.rotate(angle: pi / 4, child: LadoDerecho()),
          ),
        ],
      ),
    );
  }
}

class LadoIzquierdo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 24.0, top: 48.0, left: 48.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Titulo(),
          Expanded(child: Container(),),
          ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Container(
                width: 200.0,
                height: 200.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('logoevento.jpg'),
                    ),
                  ),
                ),
              ),
            ),
          Expanded(child: Container(),),
          DatosPersonales(),
        ],
      ),
    );
  }
}

class LadoDerecho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height,
      color: Colors.blue,
      padding: EdgeInsets.only(top: 50.0, bottom: 60.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 110.0),
          ),
          Transform.rotate(angle: -pi / 4, child: Logo()),
        ],
      ),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(100.0)),
      child: Center(
        child: Container(
          width: 150.0,
          height: 150.0,
          child: FlutterLogo(size: 150.0),
        ),
      ),
    );
  }
}

class Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Whats happened with \nFlutter?',
        style: TextStyle(
            fontSize: 52.0, color: Colors.black, fontWeight: FontWeight.w100));
  }
}

class DatosPersonales extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          FotoPerfil(),
          Container(width: 16.0),
          Datos(),
        ],
      ),
    );
  }
}

class FotoPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          image: DecorationImage(
            image: AssetImage('foto.jpg'),
          ),
        ),
      ),
    );
  }
}

class Datos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CommonText(
              texto: 'Alvaro Martinez Mancilla',
              color: Colors.black,
              size: 28.0),
          Container(height: 4.0),
          Text(
            '@alvardud',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black45,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
