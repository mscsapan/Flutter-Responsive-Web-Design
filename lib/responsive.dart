import 'package:flutter/material.dart';

double mobileScreen = 600.0;
double tabletScreen = 700.0;
double desktopScreen = 1000.0;

class Responsive extends StatelessWidget {
  const Responsive(
      {Key? key,
      required this.mobile,
      required this.tablet,
      required this.desktop})
      : super(key: key);
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  static bool isMobileScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mobileScreen;

  static bool isTabletScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mobileScreen &&
      MediaQuery.of(context).size.width <= desktopScreen;

  static bool isDesktopScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= desktopScreen;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints dimension) {
        double width = dimension.maxWidth;
        if (width <= mobileScreen) {
          return mobile;
        } else if (width >= mobileScreen && width <= tabletScreen) {
          return tablet;
        } else if (width >= desktopScreen) {
          return desktop;
        }
        return desktop;
      },
    );
  }
}
