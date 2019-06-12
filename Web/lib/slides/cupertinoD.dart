import 'package:flutter_web/material.dart';
import 'package:presentacion_iosc2019/widgets/common.dart';
import 'package:presentacion_iosc2019/widgets/wppWidgetsAndroid.dart' as wpp;

class CupertinoD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EstructuraSlide(
      title: 'Cupertino',
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CommonText(
                  texto: 'Flutter esta enfocada esencialmente \n'
                      'en la creacion de la interfaz de usuario,\n '
                      'todos los componentes de material design estan\n'
                      'incluidos en el catalogo de widgets de flutter',
                  size: 28.0,
                  color: Colors.black54,
                ),
                SizedBox(
                  height: 100.0,
                ),
                Center(
                  child: Container(
                    height: 150.0,
                    width: 150.0,
                    //constraints: BoxConstraints.expand(),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/materialdesign-min.png'),
                        ),
                      ),
                    ),
                  ),
                )
              ],
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

  /*var _elements = [
    'New group',
    'New broadcast',
    'WhatsApp Web',
    'Starred messages',
    'Settings'
  ];
  Widget menu = DropdownButton<String>(    
      items: _elements.map((String element){
        return DropdownItem<String>(
          value: element,
          child: Text(element),
        );
      }).toList(),
  );*/

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
                        VentanaStatus(),
                        VentanaCalls()
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
                Container(
                  margin: EdgeInsets.only(bottom: 4.0),
                  child: wpp.MiEstado("Today, 8:00 PM"),
                ),
                Container(
                  height: 20.0,
                  color: Colors.grey[300],
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    'Viewed updates',
                    style: TextStyle(fontSize: 10.0),
                  ),
                ),
                wpp.ElementoListaStatus("3 minutes ago", "Alejandro"),
                wpp.ElementoListaStatus("45 minutes ago", "Papa"),
                wpp.ElementoListaStatus("Today, 12:19 AM", "Maria"),
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
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 16.0,
                )),
              )),
          Positioned(
              bottom: 45.0,
              right: 5.0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blueGrey[50],
                    borderRadius: BorderRadius.circular(15)),
                width: 30,
                height: 30,
                child: Center(
                    child: Icon(
                  Icons.edit,
                  color: Colors.blueGrey,
                  size: 14.0,
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
                wpp.ElementoListaChat(
                    mensaje: "Hola",
                    emisor: "Mauricio",
                    horaDeLlegada: "11:00 AM"),
                wpp.ElementoListaChat(
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

class VentanaCalls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Center(
            child: Text(
              'No calls \navaliable',
              style: TextStyle(fontSize: 10.0, color: Colors.black54),
              textAlign: TextAlign.center,
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
                  Icons.phone,
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
