import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {

  final Color color;

  const HeaderCuadrado({
    Key key,
    this.color = Colors.blue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.35,
      color: this.color

    );
  }
}

class HeaderBordesRedondeados extends StatelessWidget {

  final Color color;

  const HeaderBordesRedondeados({
    Key key,
    this.color = Colors.blue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.35,

      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50) ),
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {

  final Color color;

  const HeaderDiagonal({
    Key key,
    this.color = Colors.blue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: double.infinity,
      width: double.infinity,

      child: CustomPaint(
        painter: _HeaderDiagonalPainter(
          this.color,
        ),
      ),
    );
  }

  
}

class _HeaderDiagonalPainter extends CustomPainter {

  final Color color;

  _HeaderDiagonalPainter(
    this.color
  );

  @override
  void paint(Canvas canvas, Size size) {

    final paint = new Paint();    // "Es el lápiz para pintar nuestro cuadro(canvas)"

    // Propiedades
    paint.color = this.color;
    paint.style = PaintingStyle.fill; // .stroke --> Hacer trazos 
    paint.strokeWidth = 2.0; // Ancho del lapiz, no necesario al usar fill

    final path = new Path();

    // Dibujar con el path y el paint; El path por defecto esta en (0, 0)
    path.moveTo(0, size.height * 0.35); // Solo mueve el paint sin dibujar
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    // path.lineTo(0, size.height / 2.75);
    
    canvas.drawPath( path, paint );

  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderTriangular extends StatelessWidget {

  final Color color;
  final Color color2;

  const HeaderTriangular({
    Key key,
    this.color = Colors.blue,
    this.color2 = Colors.grey
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,

      child: CustomPaint(
        painter: _HeaderTriangularPainter( this.color, this.color2 ),
      ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter{

  final Color color, color2;

  _HeaderTriangularPainter(
    this.color,
    this.color2
  );

  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();
    final paint2 = new Paint();
    final path = new Path();
    final path2 = new Path();

    // Propiedaes del paint
    paint.color = this.color;
    paint2.color = this.color2;
    paint.style = PaintingStyle.fill;
    paint2.style = PaintingStyle.fill;

    // Dibujar con el path y el paint; El path por defecto esta en (0, 0)
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);

    path2.lineTo(size.width, 0);
    path2.lineTo(size.width, size.height);
    canvas.drawPath(path2, paint2);

  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}


class HeaderPicoAdentro extends StatelessWidget {

  final Color color;

  const HeaderPicoAdentro({
    Key key,
    this.color = Colors.blue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,

      child: CustomPaint(
        painter: _HeaderPicoAdentroPainter(this.color),
      ),
    );
  }
}

class _HeaderPicoAdentroPainter extends CustomPainter{

  final Color color;

  _HeaderPicoAdentroPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();
    final path = new Path();

    // Propiedades
    paint.color = this.color;
    paint.style = PaintingStyle.fill;

    // Dibujar con el path y el paint; El path por defecto esta en (0, 0)
    path.lineTo(0, size.height * 0.40);
    path.lineTo(size.width * 0.5, size.height * 0.3);
    path.lineTo(size.width, size.height * 0.40);
    path.lineTo(size.width, 0);


    canvas.drawPath(path, paint);
  }
  
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}

class HeaderPicoAfuera extends StatelessWidget {

  final Color color;

  const HeaderPicoAfuera({
    Key key,
    this.color = Colors.blue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,

      child: CustomPaint(
        painter: _HeaderPicoAfueraPainter(this.color),
      ),
    );
  }
}

class _HeaderPicoAfueraPainter extends CustomPainter {

  final Color color;

  _HeaderPicoAfueraPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();
    final path = new Path();

    // Propiedades
    paint.color = this.color;
    paint.style = PaintingStyle.fill;

    // Dibujar con el path y el paint; El path por defecto esta en (0, 0)
    path.lineTo(0, size.height * 0.30);
    path.lineTo(size.width * 0.5, size.height * 0.4);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);


    canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}

class HeaderCurvoAfuera extends StatelessWidget {

  final Color color;

  const HeaderCurvoAfuera({
    Key key,
    this.color = Colors.blue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,

      child: CustomPaint(
        painter: _HeaderCurvoAfueraPainter( this.color ),
      ),
    );
  }
}

class _HeaderCurvoAfueraPainter extends CustomPainter{

  final Color color;

  _HeaderCurvoAfueraPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
      final paint = new Paint();
      final path = new Path();

      // Propiedades
      paint.color = this.color;
      paint.style = PaintingStyle.fill;

      // Camino del path
      path.lineTo(0, size.height * 0.35);
      path.quadraticBezierTo(size.width * 0.5, size.height * 0.45, size.width, size.height * 0.35);  
      // El primer punto solicitado es el eje de la curvatura
      // El segundo es el punto donde termina
      // El tercer punto es donde termina de dibujar

      // path.lineTo(size.width, size.height / 3);  // Linea en vez de curvatura
      path.lineTo(size.width, 0);


      canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderWaves extends StatelessWidget {

  final Color color;

  const HeaderWaves({
    Key key,
    this.color = Colors.blue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,

      child: CustomPaint(
        painter: _HeaderWavesPainter(this.color),
      ),
    );
  }
}

class _HeaderWavesPainter extends CustomPainter{

  final Color color;

  _HeaderWavesPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();
    final path = new Path();

    // Propiedades
    paint.color = this.color;
    paint.style = PaintingStyle.fill;

    // Camino del lienzo
    path.lineTo(0, size.height * 0.35);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.42, size.width * 0.5, size.height * 0.35);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.28, size.width, size.height * 0.35);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderWavesGradient extends StatelessWidget {

  final List<Color> colors;
  final List<double> stops;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;
  final double radius;
  final Offset originOffset;

  const HeaderWavesGradient({
    Key key,
    @required this.colors,
    @required this.stops,
    this.begin = Alignment.centerLeft,
    this.end = Alignment.centerRight,
    this.radius = 20,
    this.originOffset
  }) : assert( colors.length == stops.length ),
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,

      child: CustomPaint(
        painter: _HeaderWavesGradientPainter(
          this.colors,
          this.stops,
          this.begin,
          this.end,
          this.radius,
          this.originOffset
        ),
      ),
    );
  }
}

class _HeaderWavesGradientPainter extends CustomPainter{

  final List<Color> colors;
  final List<double> stops;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;
  final double radius;
  final Offset originOffset;

  _HeaderWavesGradientPainter(
    this.colors,
    this.stops,
    this.begin,
    this.end,
    this.radius,
    this.originOffset
  );

  @override
  void paint(Canvas canvas, Size size) {

    final Rect rect = new Rect.fromCircle(
      // Si el gradiente está de manera horizontal dy no se ve afectado, viceversa si esta en horizontal con dx
      center: (this.originOffset == null) ? Offset(165.0, 165.0) 
                                          : this.originOffset,
    radius: 20,
    );

    final Gradient gradiente = new LinearGradient(  // CircularGradient()

      // Cambiar direccion del gradiente
      begin: this.begin,
      end: this.end,

      colors: this.colors, 
      // [
      //   Color( 0xFF6D05E8 ),
      //   Color( 0xFFC012FF ),
      //   Color( 0xFF6D05FA ),
      // ],

      // Puntos porcentuales donde queremos que cada color trabaje, basados en el rango establecido en
      // el center del rect, oscila entre 0.0 y 1.0. En este caso, 3 colores por tanto 3 PUNTOS
      stops: this.stops
      // [
      //   0.2,
      //   0.5,
      //   1.0
      // ]
    );


    final paint = new Paint()..shader = gradiente.createShader(rect);
    final path = new Path();

    // Propiedades
    // paint.color = Colors.red; // Se ignora el color por el uso del shader
    paint.style = PaintingStyle.fill;

    // Camino del lienzo
    path.lineTo(0, size.height * 0.35);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.42, size.width * 0.5, size.height * 0.35);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.28, size.width, size.height * 0.35);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}

class IconHeader extends StatelessWidget {

  final IconData icon;
  final String titulo, subtitulo;
  final Color color1, color2;
  final Color elementsColor;

  const IconHeader({
    @required this.icon,
    @required this.titulo,
    @required this.subtitulo,
    this.color1 = Colors.grey,
    this.color2 = Colors.blueGrey,
    this.elementsColor = Colors.white
  });

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Stack(
      children: [
        _IconHeaderBackground( this.color1, this.color2 ),
        Positioned(
          top: -screenSize.height * 0.06,
          left: -screenSize.height * 0.06,
          child: Icon( this.icon, size: screenSize.width * 0.65, color: this.elementsColor.withOpacity(0.2), ),
        ),
        Column(
          children: [
            SizedBox(height: screenSize.height * 0.06, width: double.infinity,),  // Como los widgets están centrados en base al mas largo se usa
                                                              // el double.infinity aqui
            Text(this.subtitulo, style: TextStyle( fontSize: screenSize.width * 0.06, color: this.elementsColor.withOpacity(0.7) )),
            SizedBox(height: 20.0),
            Text(this.titulo, style: TextStyle( fontSize: screenSize.width * 0.06 + 5, color: this.elementsColor.withOpacity(0.7), fontWeight: FontWeight.bold )),
            SizedBox(height: 20.0),
            Icon( this.icon, size: screenSize.width * 0.2, color: this.elementsColor)
          ],
        )
      ],
    );
  }
}

class _IconHeaderBackground extends StatelessWidget {

  final Color color1;
  final Color color2;

  const _IconHeaderBackground(
    this.color1,
    this.color2,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.35,
      
      decoration: BoxDecoration(
        // color: Colors.red,
        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(80.0), topRight: Radius.elliptical(20, 40) ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            this.color1,
            this.color2,
          ]
        )
      ),
    );
  }
}

class HeaderFondoRectangulos extends StatelessWidget {

  final Color color;

  const HeaderFondoRectangulos({
    Key key,
    this.color = Colors.blue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Stack(
      children: [
        Positioned(
          top: screenSize.height * 0.05,
          right: screenSize.width * 0.18,
          child: Rectangulo( color: Colors.blue.withOpacity(0.5), heigh: screenSize.width * 0.3, width: screenSize.width * 0.24 )
        ),
        Positioned(
          top: screenSize.height * 0.1,
          right: screenSize.width * 0.35,
          child: Rectangulo( color: Colors.blue.withOpacity(0.8), heigh: screenSize.width * 0.24, width: screenSize.width * 0.4 )
        ),
        Positioned(
          bottom: -screenSize.height * 0.05,
          right: screenSize.width * 0.18,
          child: Rectangulo( color: Colors.blue.withOpacity(0.5), heigh: screenSize.width * 0.3, width: screenSize.width * 0.24 )
        ),
        Positioned(
          bottom: screenSize.height * 0.15,
          left: -screenSize.width * 0.1,
          child: Rectangulo( color: Colors.blue.withOpacity(0.6), heigh: screenSize.width * 0.4, width: screenSize.width * 0.4 )
        ),
        Positioned(
          bottom: screenSize.height * 0.25,
          left: screenSize.width * 0.5,
          child: Rectangulo( color: Colors.blue.withOpacity(0.9), heigh: screenSize.width * 0.6, width: screenSize.width * 0.4 )
        ),
        Positioned(
          bottom: screenSize.height * 0.45,
          right: screenSize.width * 0.25,
          child: Rectangulo( color: Colors.blue.withOpacity(0.3), heigh: screenSize.width * 0.3, width: screenSize.width * 0.8 )
        ),
      ],
    );
  }

  
}

class Rectangulo extends StatelessWidget {
final Color color;
final heigh;
final width;

const Rectangulo({
  Key key,
  this.color = Colors.blue,
  this.heigh = 70,
  this.width = 70,
}) : super(key: key);

    @override
    Widget build(BuildContext context) {

    return Container(
       width: this.width,
       height: this.heigh,
       decoration: BoxDecoration(
         color: this.color,
         borderRadius: BorderRadius.circular(10.0)
       ),
     );
   }
}

