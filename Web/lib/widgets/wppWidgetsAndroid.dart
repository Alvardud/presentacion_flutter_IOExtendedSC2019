import 'package:flutter_web/material.dart';

class ContactoChat extends StatelessWidget {
  final String mensaje;
  final String emisor;
  final String horaDeLlegada;

  @override
  ContactoChat({this.mensaje, this.emisor, this.horaDeLlegada});

  //la estructura es Column =>  (Row => (emisor, hora de llegada), mensaje)
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 117.0,
                child: Text(
                  emisor,
                  style: TextStyle(color: Colors.black, fontSize: 12.0),
                ),
              ),
              Text(
                horaDeLlegada,
                style: TextStyle(color: Colors.black54, fontSize: 10.0),
              ),
            ],
          ),
          Container(
            width: 160.0,
            child: Text(
              mensaje,
              style: TextStyle(color: Colors.black54, fontSize: 10.0),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

//constructor del widget de mensaje

class ElementoListaChat extends StatelessWidget {
  //largo: 366,
  final String mensaje;
  final String emisor;
  final String horaDeLlegada;
  //Color _colorImagen;
  //Widget _chat;

  ElementoListaChat({this.emisor, this.mensaje, this.horaDeLlegada});

  Widget build(BuildContext context) {
    return Container(
      height: 51.0,
      width: 208.0,
      child: Column(
        children: <Widget>[
          InkWell(
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 2.0, bottom: 2.0),
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),

                //creamos un nuevo widget que contenga el contacto (solo textos)
                ContactoChat(
                    mensaje: mensaje,
                    emisor: emisor,
                    horaDeLlegada: horaDeLlegada),
              ],
            ),

            ///cuando nuestro objeto sea tapeado (click), este debe enviarnos hacia una
            ///nueva ruta, en este caso el chat
            onTap: () {
              ///primero creamos el objeto chat
              /*_chat= new Chat(_emisor);
                //utilizamos el widget 'Navigator', este nos ayudara a desplazarnos
                //entre rutas
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> _chat, //en este caso nuestra ruta es '_chat'
                ));*/
            },
          ),
          //linea divisora entre elementos de una lista
          Divider(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

class ContactoStatus extends StatelessWidget {
  String _hora = '';
  String _emisor = '';
  @override
  ContactoStatus(String h, String e) {
    _hora = h;
    _emisor = e;
  }

  Widget build(BuildContext context) {
    return Container(
        width: 150.0,
        padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              _emisor,
              style: TextStyle(color: Colors.black, fontSize: 10.0),
              textAlign: TextAlign.left,
            ),
            Text(
              _hora,
              style: TextStyle(color: Colors.black54,fontSize: 10.0),
              textAlign: TextAlign.left,
            ),
          ],
        ));
  }
}

class ElementoListaStatus extends StatelessWidget {
  String _hora = '';
  String _emisor = '';
  //Color _colorImagen;

  @override
  ElementoListaStatus(String h, String e) {
    _hora = h;
    _emisor = e;
    // _colorImagen=c;
  }

  Widget build(BuildContext context) {
    return Container(
      height: 51.0,
      width: 208.0,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 2.0, bottom: 2.0),
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
             ContactoStatus(_hora, _emisor),
            ],
          ),
          Divider(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

class MiEstado extends StatelessWidget {
  String _hora;

  MiEstado(String h) {
    _hora = h;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      child: Row(
        children: <Widget>[
          Container(
            //padding: EdgeInsets.only(top:2.0,bottom: 2.0),
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          ContactoStatus(_hora, "My Status"),
          Center(
            child: Icon(
              Icons.more_horiz,
              color: Colors.teal[800],
              size: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}