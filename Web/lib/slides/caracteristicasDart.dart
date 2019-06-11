import 'package:flutter_web/material.dart';
import 'package:presentacion_iosc2019/widgets/common.dart';

class CaracteristicasDart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EstructuraSlide(
      title: 'Caracteristicas Dart',
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
          Expanded(child:Arriba()),
          Expanded(child:Abajo()),
        ],
      )
    );
  }
}

class Arriba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(child: ElementoTexto(titulo:'Productivo',subTitulo:'La sintaxis de Dart \n es clara y concisa,'
          'sus herramientas son simples pero potentes.'),),
        Expanded(child: ElementoTexto(titulo: 'Rapido',subTitulo: 'Dart proporciona una compilación '
              'anticipada para obtener un alto rendimiento predecible',
        ),),
        Expanded(child: ElementoTexto(titulo: 'Portable',subTitulo: "Dart se compila a código ARM y x86, "
              "para que las aplicaciones móviles de Dart puedan ejecutarse de forma nativa en iOS, Android y más",
          ),),
      ],
    );
  }
}

class Abajo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(child: ElementoTexto(titulo: 'Accesible',subTitulo: "Si ya conoce C ++, C # o Java,"
              " puede ser productivo con Dart en solo unos días.",
        ),),
        Expanded(child: ElementoTexto(titulo: 'Reactivo',subTitulo: 'Dart es compatible con la programación '
              'asíncrona a través de las funciones de lenguaje y las API que utilizan objetos Future y Stream.',
          ),),
      ],
    );
  }
}

class ElementoTexto extends StatelessWidget {

  final String titulo;
  final String subTitulo;

  ElementoTexto({
    this.titulo,
    this.subTitulo
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: Colors.blue[800]),
        color: Colors.blue[800]
        /*gradient: LinearGradient(colors: [
          Colors.blue[300],
          Colors.blue,
          Colors.blue[800]
        ])*/
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(titulo,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 38.0,color: Colors.white),),
          Text(subTitulo,style: TextStyle(color: Colors.white,fontSize: 24.0,),textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
