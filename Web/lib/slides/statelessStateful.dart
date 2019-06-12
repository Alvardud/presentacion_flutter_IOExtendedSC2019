import 'package:flutter_web/material.dart';
import 'package:presentacion_iosc2019/widgets/common.dart';

class StatelessStateful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EstructuraSlide(
      title: 'Estado de los Widgets',
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
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              height: 600.0,
              child: Stack(
                children: <Widget>[
                  Imagen(),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 6 - 15,
                    left: 221.0,
                    child: Aplicacion(
                      controlador: true,
                      largo: 366,
                      ancho: 208,
                      contexto: context,
                    ),
                  ),
                  Positioned(
                    bottom: 10.0,
                    left: 221.0,
                    child: Text(
                      'Stateless Widget',
                      style: TextStyle(fontSize: 28.0, color: Colors.black54),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 600.0,
              child: Stack(
                children: <Widget>[
                  Imagen(),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 6 - 15,
                    left: 221.0,
                    child: Aplicacion(
                      controlador: false,
                      largo: 366,
                      ancho: 208,
                      contexto: context,
                    ),
                  ),
                  Positioned(
                      bottom: 10.0,
                      left: 230.0,
                      child: Text(
                        'Stateful Widget',
                        style: TextStyle(fontSize: 28.0, color: Colors.black54),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Aplicacion extends StatelessWidget {
  final double largo;
  final double ancho;
  final BuildContext contexto;
  final bool controlador;

  Aplicacion(
      {this.ancho, this.largo, Key key, this.contexto, this.controlador});

  @override
  Widget build(contexto) {
    return Container(
      height: largo,
      width: ancho,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: controlador ? Estatico() : Dinamico(),
          ),
        ),
      ),
    );
  }
}

class Estatico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Widgets\nEstaticos',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              onPressed: () {},
              splashColor: Colors.lightBlue,
              color: Colors.blue,
              child: Text(
                'Sin Estado',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Dinamico extends StatefulWidget {
  @override
  _DinamicoState createState() => _DinamicoState();
}

class _DinamicoState extends State<Dinamico> {
  bool _controlador;

  @override
  void initState() {
    super.initState();
    _controlador = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _controlador ? Colors.red : Colors.blue,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Widgets\nDinamicos',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _controlador = false;
                });
              },
              splashColor: Colors.black38,
              color: Colors.black54,
              child: Text(
                'Azul',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _controlador = true;
                });
              },
              splashColor: Colors.black38,
              color: Colors.black54,
              child: Text(
                'Rojo',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Imagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.0,
      constraints: BoxConstraints.expand(),
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/android.png'),
          ),
        ),
      ),
    );
  }
}
