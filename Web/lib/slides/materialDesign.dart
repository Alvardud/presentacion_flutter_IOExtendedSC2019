import 'package:flutter_web/material.dart';
import 'package:presentacion_iosc2019/widgets/common.dart';
import 'package:presentacion_iosc2019/widgets/wppWidgetsAndroid.dart' as wpp;

class MaterialDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EstructuraSlide(
      title: 'Material Design',
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
            child: CommonText(
              texto: 'Dart es utilizado para crear aplicaciones \n'
                  'de alta calidad con misión principal\n'
                  'para iOS, Android y la web. \n'
                  'Con características dirigidas al desarrollo del lado del cliente, \n'
                  'Dart es ideal para aplicaciones móviles y web.',
              size: 28.0,
              color: Colors.black54,
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
                      largo: 366,
                      ancho: 208,
                      contexto: context,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Aplicacion extends StatefulWidget {
  final double largo;
  final double ancho;
  final BuildContext contexto;

  Aplicacion({this.ancho, this.largo, Key key, this.contexto});

  @override
  _AplicacionState createState() => _AplicacionState();
}

class _AplicacionState extends State<Aplicacion>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(contexto) {
    return Container(
      height: widget.largo,
      width: widget.ancho,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.teal[800],
          //backgroundColor:  Colors.teal[800],
        ),
        home: Scaffold(
          body: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                height: widget.largo / 9.5,
                color: Colors.teal[800],
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('WhatsApp',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                        )),
                    Expanded(child: Container()),
                    Icon(
                      Icons.search,
                      size: 12,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.0),
                    ),
                    Icon(Icons.more_vert, size: 12, color: Colors.white),
                  ],
                ),
              ),
              TabBar(
                indicatorColor: Colors.white,
                controller: _tabController,
                tabs: <Widget>[
                  Text(
                    "CHATS",
                    style: TextStyle(fontSize: 9.0),
                  ),
                  Text(
                    "STATUS",
                    style: TextStyle(fontSize: 9.0),
                  ),
                  Text(
                    "CALLS",
                    style: TextStyle(fontSize: 9.0),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                    color: Colors.white,
                    child: TabBarView(
                      controller: _tabController,
                      children: <Widget>[
                        VentanaChats(),
                        Container(),
                        Container()
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class VentanaStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(4.0),
            child: ListView(
              children: <Widget>[
                wpp.ElementoLista(
                    mensaje: "Hola",
                    emisor: "Mauricio",
                    horaDeLlegada: "11:00 AM"),
                wpp.ElementoLista(
                    mensaje: "Estoy en el IO de SC",
                    emisor: "Jhon",
                    horaDeLlegada: "10:45 AM"),
              ],
            ),
          ),
          Positioned(
              bottom: 5.0,
              right: 5.0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.lightGreen[600],
                    borderRadius: BorderRadius.circular(17.5)),
                width: 35,
                height: 35,
                child: Center(
                    child: Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 16.0,
                )),
              )),
        ],
      ),
    );
  }
}

class VentanaChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(4.0),
            child: ListView(
              children: <Widget>[
                wpp.ElementoLista(
                    mensaje: "Hola",
                    emisor: "Mauricio",
                    horaDeLlegada: "11:00 AM"),
                wpp.ElementoLista(
                    mensaje: "Estoy en el IO de SC",
                    emisor: "Jhon",
                    horaDeLlegada: "10:45 AM"),
              ],
            ),
          ),
          Positioned(
              bottom: 5.0,
              right: 5.0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.lightGreen[600],
                    borderRadius: BorderRadius.circular(17.5)),
                width: 35,
                height: 35,
                child: Center(
                    child: Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 16.0,
                )),
              )),
        ],
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
