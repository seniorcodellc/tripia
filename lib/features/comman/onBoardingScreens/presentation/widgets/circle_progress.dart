import 'dart:math';

import 'package:flutter/material.dart';


class GradientCircularProgressIndicator extends StatefulWidget {
  final double radius;
  final List<Color> gradientColors;
  final double strokeWidth;

  GradientCircularProgressIndicator({super.key,
    required this.radius,
    required this.gradientColors,
    this.strokeWidth = 3.0,
  });

  @override
  State<GradientCircularProgressIndicator> createState() => _GradientCircularProgressIndicatorState();
}

class _GradientCircularProgressIndicatorState extends State<GradientCircularProgressIndicator> with TickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animationController!.addListener(() => setState(() {}));
    _animationController!.repeat();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 0.0).animate(_animationController!),
      child: CustomPaint(
        size: Size.fromRadius(widget.radius),
        painter: GradientCircularProgressPainter(
          radius: widget.radius,
          gradientColors: widget.gradientColors,
          strokeWidth: widget.strokeWidth,
        ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _animationController!.dispose();
    super.dispose();
  }
}

class GradientCircularProgressPainter extends CustomPainter {
  GradientCircularProgressPainter({
    required this.radius,
    required this.gradientColors,
    required this.strokeWidth,
  });
  final double radius;
  final List<Color> gradientColors;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    size = Size.fromRadius(radius);
    double offset = strokeWidth / 2;
    Rect rect = Offset(offset, offset) &
    Size(size.width - strokeWidth, size.height - strokeWidth);
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    paint.shader =
        SweepGradient(colors: gradientColors, startAngle: 0, endAngle: 1 * pi)
            .createShader(rect);
    canvas.drawArc(rect, 0.0, 1.4 * pi, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}


// class CircularBorderContainer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: context.width*0.37, // Set the desired width and height
//       height: context.height*0.124,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         border: Border.all(
//           color: Colors.red, // Color of the inner two-thirds of the border
//           width: 10.0, // Adjust the width as needed
//         ),
//         borderRadius: BorderRadius.circular(100.0), // Half of the container size
//         boxShadow: [
//           BoxShadow(
//             color: AppColors.rosColor, // Color of the outer one-third of the border
//             spreadRadius: 5, // Adjust the spread radius as needed
//             blurRadius: 15, // Adjust the blur radius as needed
//           ),
//         ],
//       ),
//     );
//   }
// }
