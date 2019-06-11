import 'package:flutter_web/material.dart';
import 'package:presentacion_iosc2019/widgets/common.dart';

class LenguajeProgramacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EstructuraSlide(
      title: 'Dart',
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
            child: CommonText(texto: 'Dart es utilizado para crear aplicaciones \n'
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
              height: 280.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('dartlogo.png'),
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
