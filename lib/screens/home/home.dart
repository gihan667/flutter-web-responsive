import 'package:flutter/material.dart';
import 'package:flutter_web/components/footer.dart';
import 'package:flutter_web/components/header.dart';
import 'package:flutter_web/components/side_menu.dart';

import 'components/jumbotron.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // we designed this landing page on previous video, you can get base code from
    // https://github.com/gihan667/flutter-web-landing-page
    // We have overflow issue on fullscreen
    // Now we get overflow on screen width 765px, let's fix this
    // Now our menu overflow on screen width 612px, let's fix this
    // Our footer also get's overflow on smaller width which is mobile views
    // Our jumbotron get's crappy when screen width getting lower, let's add some styles :)
    // Our texts on jumbotron too small on desktop size, lets add some style to them
    // Looks good on browser on each screen size, let's check on iphone
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 300
        ),
        child: SideMenu(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            constraints: BoxConstraints(
              minHeight: size.height
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Header(),

                Jumbotron(),

                Footer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}