import 'package:flutter_web/material.dart';
import 'package:presentacion_iosc2019/widgets/common.dart';

class ArquitecturaWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EstructuraSlide(
      title: "Estructura Web",
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
      child: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget>[
            Arriba(),
            Container(height: 20.0,),
            Abajo()
          ]
        )
      ),
    );
  }
}

class Abajo extends StatelessWidget {

  double _width;

  @override
  Widget build(BuildContext context) {

    _width = MediaQuery.of(context).size.width/1.5;

    return Container(
      width: _width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 140.0,
            child: Text('Browser\n(C++, JS)',style:TextStyle(
              color: Colors.black54,fontSize: 28.0,),
              textAlign: TextAlign.end,
            ),
          ),
          Container(width: 12.0,),
          Row(
            children: <Widget>[
              Card(color:Colors.orange,title:'Canvas',cText:Colors.white,size:16.0,width:_width/3-54,),
              Container(width: 4.0,),
              Card(color:Colors.orange,title:'JS Engine',cText:Colors.white,size:16.0,width:_width/3-54),
              Container(width: 4.0,),
              Card(color:Colors.orange,title:'DOM',cText:Colors.white,size:16.0,width:_width/3-54),
            ],
          )
        ],
      ),
    );
  }
}

class Arriba extends StatelessWidget {

  double _width;

  @override
  Widget build(BuildContext context) {

    _width = MediaQuery.of(context).size.width/1.5;

    return Container(
      width: _width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 140.0,
            child: Text('Framework\n(Dart)',style:TextStyle(
              color: Colors.black54,fontSize: 28.0,),
              textAlign: TextAlign.end,
            ),
          ),
          Container(width: 12.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(color:Colors.green,title:'Theming',cText:Colors.white,size:16.0,width:_width-153.5,),
              Container(height: 4.0),
              Card(color:Colors.green,title:'Widgets',cText:Colors.white,size:16.0,width:_width-153.5,),
              Container(height: 4.0),
              Card(color:Colors.green,title:'Rendering',cText:Colors.white,size:16.0,width:_width-153.5,),
              Container(height: 4.0),
              Row(
                children: <Widget>[
                  Card(color:Colors.green,title:'Animation',cText:Colors.white,size:16.0,width:_width/3-54,),
                  Container(width: 4.0,),
                  Card(color:Colors.green,title:'Painting',cText:Colors.white,size:16.0,width:_width/3-54),
                  Container(width: 4.0,),
                  Card(color:Colors.green,title:'Gestures',cText:Colors.white,size:16.0,width:_width/3-54),
                ],
              ),
              Container(height: 4.0),
              Card(color:Colors.green,title:'Foundation',cText:Colors.white,size:16.0,width:_width-153.5,),
            ],
          )
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {

  final String title;
  final Color cText;
  final Color color;
  final double size;
  final double width;

  Card({
    this.width,
    this.size,
    this.title,
    this.color,
    this.cText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 50.0,
      width: width,
      child: Center(
        child: Text(title,style: TextStyle(
          fontSize: 28.0,
          color: cText,
        ),),
      ),
    );
  }
}
