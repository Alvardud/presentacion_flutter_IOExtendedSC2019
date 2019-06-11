import 'package:flutter_web/material.dart';

class Picker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.0,
      margin: EdgeInsets.only(right: 8.0,left: 40.0,bottom: 16.0),
      width: 150.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: Colors.yellow[800]
      ),
    );
  }
}

class Titulo extends StatelessWidget {
  final String title;
  Titulo({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      margin: EdgeInsets.only(right:16.0,left: 40.0,top: 4.0),
      padding: EdgeInsets.symmetric(vertical: 4.0),
      width: MediaQuery.of(context).size.width,
      child: Text(title,style: TextStyle(
        fontSize: 48.0,
        color: Colors.blue[800],
      ),),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
      height: 40.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
          children:<Widget>[
            Expanded(child:Container()),
            FlutterLogo(size: 32.0,)
          ]
      ),
    );
  }
}

class CommonText extends StatelessWidget {

  final String texto;
  final Color color;
  final double size;

  CommonText({
    this.size,
    this.color,
    this.texto
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}

class EstructuraSlide extends StatelessWidget {

  final String title;
  final Widget cuerpo;

  EstructuraSlide({
    this.title,
    this.cuerpo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: EdgeInsets.only(top: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Titulo(title: title,),
          Padding(padding: EdgeInsets.symmetric(vertical: 4.0),),
          Picker(),
          cuerpo,
          Footer()
        ],
      ),
    );
  }
}


class CardImagen extends StatelessWidget {

  final String direccion;
  final String nombre;
  final double width;
  final double heigth;

  CardImagen({
    this.heigth,
    this.width,
    this.direccion,
    this.nombre
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: heigth,
            width: width,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(direccion),
                ),
              ),
            ),
          ),
          Container(height: 4.0,),
          Text(nombre,style: TextStyle(
              color: Colors.black54,fontSize: 16.0
          ),textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}