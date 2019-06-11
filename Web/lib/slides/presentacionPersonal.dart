import 'package:flutter_web/material.dart';
import 'package:presentacion_iosc2019/widgets/common.dart';

class PresentacionPersonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 24.0,left: 36.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(width: 136.0,),
              Titulo(),
            ]),
          Row(
            children: <Widget>[
              Foto(),
              Container(width: 16.0,),
              InformacionPersonal()
            ])
        ],
      ),
    );
  }
}

class Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CommonText(texto:'Hi!',color: Colors.black54,size: 52.0),
        CommonText(texto:'my name is:',color:Colors.black54,size:24.0),
      ],
    );
  }
}

class Foto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 120.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60.0),
          image: DecorationImage(
            image: AssetImage('foto.jpg'),
          ),
        ),
      ),
    );
  }
}

//Pensar si colocar Gmail o LinkedIn tambien
class InformacionPersonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CommonText(texto: 'Alvaro Martinez Mancilla',color: Colors.black,size:24.0),
        Container(height: 4.0,),
        CommonText(texto:'Co-Founder and mobile developer at AuroraSoft',color: Colors.black,size: 20.0,),
        Container(height: 4.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RedesSociales(nick: '@alvardud',direccionFoto: 'twitter.png',),
            Container(width: 16.0,),//twitter
            RedesSociales(nick: 'alvardud',direccionFoto: 'github.png',), //github
          ],
        ),
      ],
    );
  }
}

class RedesSociales extends StatelessWidget {

  final String direccionFoto;
  final String nick;

  RedesSociales({
    this.direccionFoto,
    this.nick
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 25.0,
          height: 25.0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(direccionFoto),
              ),
            ),
          ),
        ),
        Container(width: 4.0,),
        Text(nick,style: TextStyle(fontSize: 16),)
      ],
    );
  }
}