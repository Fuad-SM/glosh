import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class StaggeredAnimation extends StatelessWidget {
  const StaggeredAnimation(
      {this.verticalOffset = 0,
      this.horizontalOffset = 0,
      required this.children,
      this.duration = 375,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      Key? key})
      : super(key: key);

  final List<Widget> children;
  final double? verticalOffset;
  final double? horizontalOffset;
  final int duration;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: Column(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        children: AnimationConfiguration.toStaggeredList(
            duration: Duration(milliseconds: duration),
            childAnimationBuilder: (widget) => SlideAnimation(
                  verticalOffset: verticalOffset,
                  horizontalOffset: horizontalOffset,
                  curve: Curves.easeIn,
                  child: FadeInAnimation(
                    child: widget,
                  ),
                ),
            children: children),
      ),
    );
  }
}
