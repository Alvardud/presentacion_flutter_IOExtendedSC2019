import 'package:flutter_web/material.dart';
import 'package:presentacion_iosc2019/widgets/common.dart';

class ComponentesFamiliaGoogle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EstructuraSlide(
      title: 'Componentes clave que ofrece google',
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
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Texto(),
          Expanded(child: Abajo())
        ],
      ),
    );
  }
}

class Texto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: Center(
        child: CommonText(texto: 'Flutter ofrece un kit de herramientas de UI portátil \n'
            'y de alta calidad, y una forma rápida y expresiva \n'
            'de crear UI de aplicaciones nativas',
          color: Colors.black54,
          size: 28.0,
        ),
      )
    );
  }
}


class Abajo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(child: CardImagen(direccion: 'images/firebase.png',nombre: 'Firebase',width: 125.0,heigth:150.0)),
          Expanded(child: CardImagen(direccion: 'images/materialdesign-min.png',nombre: 'Material Design',width: 150.0,heigth:150.0)),
          Expanded(child: CardImagen(direccion: 'images/cloud.png',nombre: 'Cloud Platform',width: 200.0,heigth:150.0),),
          Expanded(child: CardImagen(direccion: 'images/mlkit.png',nombre: 'ML Kit',width: 200.0,heigth:150.0))
        ],
      ),
    );
  }
}