import 'package:flutter/material.dart';

// class StaggerAnimation extends StatelessWidget {
//   StaggerAnimation({super.key, required this.controller})
//       :
//
//   // Each animation defined here transforms its value during the subset
//   // of the controller's duration defined by the animation's interval.
//   // For example the opacity animation transforms its value during
//   // the first 10% of the controller's duration.
//
//         color = Tween<Color>(
//           begin: Colors.white,
//           end: Colors.teal,
//         ).animate(
//           CurvedAnimation(
//             parent: controller,
//             curve: const Interval(
//               0.0,
//               0.1,
//               curve: Curves.ease,
//             ),
//           ),
//         ),
//         width = Tween<double>(
//           begin: 50.0,
//           end: 150.0,
//         ).animate(
//           CurvedAnimation(
//             parent: controller,
//             curve: const Interval(
//               0.125,
//               0.250,
//               curve: Curves.ease,
//             ),
//           ),
//         ),
//         height = Tween<double>(begin: 50.0, end: 150.0).animate(
//           CurvedAnimation(
//             parent: controller,
//             curve: const Interval(
//               0.250,
//               0.375,
//               curve: Curves.ease,
//             ),
//           ),
//         ),
//         padding = EdgeInsetsTween(
//           begin: const EdgeInsets.only(bottom: 16.0),
//           end: const EdgeInsets.only(bottom: 75.0),
//         ).animate(
//           CurvedAnimation(
//             parent: controller,
//             curve: const Interval(
//               0.250,
//               0.375,
//               curve: Curves.ease,
//             ),
//           ),
//         ),
//         borderRadius = BorderRadiusTween(
//           begin: BorderRadius.circular(4.0),
//           end: BorderRadius.circular(75.0),
//         ).animate(
//           CurvedAnimation(
//             parent: controller,
//             curve: const Interval(
//               0.375,
//               0.500,
//               curve: Curves.ease,
//             ),
//           ),
//         ),
//         color = ColorTween(
//           begin: Colors.indigo[100],
//           end: Colors.orange[400],
//         ).animate(
//           CurvedAnimation(
//             parent: controller,
//             curve: const Interval(
//               0.500,
//               0.750,
//               curve: Curves.ease,
//             ),
//           ),
//         );
//
//   final Animation<double> controller;
//   final Animation<double> opacity;
//   final Animation<double> width;
//   final Animation<double> height;
//   final Animation<EdgeInsets> padding;
//   final Animation<BorderRadius?> borderRadius;
//   final Animation<Color?> color;
//
//   // This function is called each time the controller "ticks" a new frame.
//   // When it runs, all of the animation's values will have been
//   // updated to reflect the controller's current value.
//   Widget _buildAnimation(BuildContext context, Widget? child) {
//     return Container(
//       padding: padding.value,
//       alignment: Alignment.bottomCenter,
//       child: Opacity(
//         opacity: opacity.value,
//         child: Container(
//           width: width.value,
//           height: height.value,
//           decoration: BoxDecoration(
//             color: color.value,
//             border: Border.all(
//               color: Colors.indigo[300]!,
//               width: 3.0,
//             ),
//             borderRadius: borderRadius.value,
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       builder: _buildAnimation,
//       animation: controller,
//     );
//   }
// }

class InstantCurve extends Curve {
  // t = x
  @override
  double transformInternal(double t) {
    return 1; //f(x)
  }
}


class QuestionAnswer extends StatefulWidget {
  final String answer;
  final bool selected;
  final Function onPress;

  const QuestionAnswer({Key? key, required this.answer, required this.onPress, required this.selected})
      : super(key: key);

  @override
  State<QuestionAnswer> createState() => _QuestionAnswerState();
}

class _QuestionAnswerState extends State<QuestionAnswer> with SingleTickerProviderStateMixin {


  // bool selected = false;


  Future<void> select() async {
    widget.onPress();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        width: double.infinity,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          color: widget.selected ? Theme.of(context).primaryColor : Colors.white,
          child: InkWell(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                    widget.answer,
                  style: TextStyle(
                    color: widget.selected ? Theme.of(context).colorScheme.onPrimary : Colors.black,
                  ),
                ),
              ),
            ),
            onTap: select,
          ),
        ),
      ),
    );
  }
}
