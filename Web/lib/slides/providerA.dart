import 'package:flutter_web/material.dart';
import 'package:presentacion_iosc2019/widgets/common.dart';

class ProviderA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EstructuraSlide(
      title: 'Provider',
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: CommonText(texto: 'El equipo de Google recomienda\n'
                        'utilizar para el manejo de estados \n'
                        'lo que es el paquete "Provider",\n' 
                        'ya que esta herramienta nos\n'
                        'nos facilita esta necesidad a traves de \n'
                        'los metodos Getter y Setter (Get and Set)',
              size: 28.0,
              color: Colors.black54,
            ),
          ),
          Expanded(
            child: Container(
              height: 280.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/provider.png'),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
