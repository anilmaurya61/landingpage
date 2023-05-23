// import 'dart:async';
// import 'dart:math' as math;
// import 'dart:ui';

// import 'package:flutter/material.dart';

// class SmokeCursor extends StatefulWidget {
//   final Widget child;

//   const SmokeCursor({required this.child});

//   @override
//   _SmokeCursorState createState() => _SmokeCursorState();
// }

// class _SmokeCursorState extends State<SmokeCursor> {
//   List<SmokeParticle> _particles = [];
//   Timer? _resetTimer;

//   void _updateCursor(PointerEvent event) {
//     setState(() {
//       final particle = SmokeParticle(
//         position: event.localPosition,
//         creationTime: DateTime.now().millisecondsSinceEpoch,
//       );
//       _particles.add(particle);
//     });
//     _resetParticles();
//   }

//   void _resetParticles() {
//     _resetTimer?.cancel();
//     _resetTimer = Timer(Duration(milliseconds: 500), () {
//       setState(() {
//         _particles.clear();
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _resetTimer?.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onHover: (event) {
//         setState(() {
//           _updateCursor(event);
//         });
//       },
//       child: Stack(
//         children: [
//           widget.child,
//           CustomPaint(
//             painter: SmokeParticlePainter(particles: _particles),
//             size: Size.infinite,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SmokeParticle {
//   final Offset position;
//   final int creationTime;

//   SmokeParticle({required this.position, required this.creationTime});
// }

// class SmokeParticlePainter extends CustomPainter {
//   final List<SmokeParticle> particles;
//   final int maxParticleLifetime =
//       5000; // Maximum lifetime of a particle in milliseconds

//   SmokeParticlePainter({required this.particles});

//   @override
//   void paint(Canvas canvas, Size size) {
//     final rect = Rect.fromLTWH(0, 0, size.width, size.height);
//     final gradient = RadialGradient(
//       colors: [
//         Colors.grey.withOpacity(0.3),
//         Colors.grey.withOpacity(0.0),
//       ],
//       stops: [0.0, 1.0], // Add stops for the gradient
//     );

//     final currentTime = DateTime.now().millisecondsSinceEpoch;

//     for (final particle in particles) {
//       final particleLifetime = currentTime - particle.creationTime;
//       if (particleLifetime > maxParticleLifetime) continue;

//       final opacity = 1.0 - (particleLifetime / maxParticleLifetime);
//       final color = Colors.grey.withOpacity(opacity);

//       final paint = Paint()
//         ..shader = gradient.createShader(rect)
//         ..color = color
//         ..style = PaintingStyle.fill;

//       final centerX = particle.position.dx;
//       final centerY = particle.position.dy;
//       final radius = size.width / 2;

//       canvas.drawCircle(Offset(centerX, centerY), radius, paint);
//     }
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }

// class CursorPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final path = Path();
//     final centerX = size.width / 2;
//     final centerY = size.height / 2;
//     final radius = size.width / 2;

//     path.moveTo(centerX - radius, centerY);
//     path.lineTo(centerX - radius * 0.8, centerY + radius * 0.4);
//     path.lineTo(centerX - radius * 0.4, centerY + radius * 0.8);
//     path.lineTo(centerX, centerY + radius);
//     path.lineTo(centerX + radius * 0.4, centerY + radius * 0.8);
//     path.lineTo(centerX + radius * 0.8, centerY + radius * 0.4);
//     path.lineTo(centerX + radius, centerY);
//     path.lineTo(centerX + radius * 0.8, centerY - radius * 0.4);
//     path.lineTo(centerX + radius * 0.4, centerY - radius * 0.8);
//     path.lineTo(centerX, centerY - radius);
//     path.lineTo(centerX - radius * 0.4, centerY - radius * 0.8);
//     path.lineTo(centerX - radius * 0.8, centerY - radius * 0.4);
//     path.close();
//     final paint = Paint()
//       ..color = Colors.blue
//       ..style = PaintingStyle.fill;

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }



















import 'dart:async';
import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';

class SmokeCursor extends StatefulWidget {
  final Widget child;

  const SmokeCursor({required this.child});

  @override
  _SmokeCursorState createState() => _SmokeCursorState();
}

class _SmokeCursorState extends State<SmokeCursor> {
  List<SmokeParticle> _particles = [];
  Timer? _resetTimer;

  void _updateCursor(PointerEvent event) {
    setState(() {
      final particle = SmokeParticle(
        position: event.localPosition,
      );
      _particles.add(particle);
    });
    _resetParticles();
  }

  void _resetParticles() {
    _resetTimer?.cancel();
    _resetTimer = Timer(Duration(milliseconds: 500), () {
      setState(() {
        _particles.clear();
      });
    });
  }

  @override
  void dispose() {
    _resetTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          _updateCursor(event);
        });
      },
      child: Stack(
        children: [
          widget.child,
          ..._particles.map((particle) {
            return Positioned(
              left: particle.position.dx,
              top: particle.position.dy,
              child: CustomPaint(
                painter: SmokeParticlePainter(),
                size: Size(80, 80),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}

class SmokeParticle {
  final Offset position;

  SmokeParticle({required this.position});
}

class SmokeParticlePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final gradient = RadialGradient(
      colors: [
        Colors.grey.withOpacity(0.3),
        Colors.grey.withOpacity(0.0),
      ],
    );

    final paint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.fill;

    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final radius = size.width / 2;

    canvas.drawCircle(Offset(centerX, centerY), radius, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class CursorPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final radius = size.width / 2;

    path.moveTo(centerX - radius, centerY);
    path.lineTo(centerX - radius * 0.8, centerY + radius * 0.4);
    path.lineTo(centerX - radius * 0.4, centerY + radius * 0.8);
    path.lineTo(centerX, centerY + radius);
    path.lineTo(centerX + radius * 0.4, centerY + radius * 0.8);
    path.lineTo(centerX + radius * 0.8, centerY + radius * 0.4);
    path.lineTo(centerX + radius, centerY);
    path.lineTo(centerX + radius * 0.8, centerY - radius * 0.4);
    path.lineTo(centerX + radius * 0.4, centerY - radius * 0.8);
    path.lineTo(centerX, centerY - radius);
    path.lineTo(centerX - radius * 0.4, centerY - radius * 0.8);
    path.lineTo(centerX - radius * 0.8, centerY - radius * 0.4);
    path.close();
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
