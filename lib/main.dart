import 'package:flutter/material.dart';
import 'package:responsive_web/custom_container.dart';
import 'package:responsive_web/responsive.dart';

void main() {
  runApp(const MaterialApp(home: Home(), debugShowCheckedModeBanner: false));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWith = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          Responsive.isMobileScreen(context)
              ? 'Mobile'
              : Responsive.isTabletScreen(context)
                  ? 'Tablet'
                  : Responsive.isDesktopScreen(context)
                      ? 'Desktop'
                      : 'Mobile',
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child:
            const ResponsiveContainer(), /*Text(
          Responsive.isMobileScreen(context)
              ? 'Mobile'
              : Responsive.isTabletScreen(context)
                  ? 'Tablet'
                  : Responsive.isDesktopScreen(context)
                      ? 'Desktop'
                      : 'Mobile',
          style: TextStyle(
            fontSize: Responsive.isMobileScreen(context)
                ? 20.0
                : Responsive.isTabletScreen(context)
                    ? 30.0
                    : Responsive.isDesktopScreen(context)
                        ? 40.0
                        : 14.0,
            color: Responsive.isMobileScreen(context)
                ? Colors.green
                : Responsive.isTabletScreen(context)
                    ? Colors.orange
                    : Responsive.isDesktopScreen(context)
                        ? Colors.yellow
                        : Colors.black,
          ),
        ),
      ),*/
      ),
    );
  }
}
