part of '../flutter_page_tranzitionz.dart';

class ScaleTranzition extends PageTranzition {
  ScaleTranzition({
    required super.child,
    this.alignment = Alignment.center,
    this.curve = Curves.linear,
  });

  final Alignment alignment;
  final Curve curve;

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return ScaleTransition(
      alignment: alignment,
      scale: CurvedAnimation(
        parent: animation,
        curve: Interval(
          0.0,
          0.5,
          curve: curve,
        ),
      ),
      child: child,
    );
  }
}
