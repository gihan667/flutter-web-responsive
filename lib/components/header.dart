import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/images/logo.png',
            width: 50,
          ),

          SizedBox(width: 10),

          Text(
            "Peta Beauty",
            style: GoogleFonts.reenieBeanie(
              fontSize: 18
            ),
          ),

          Spacer(),

          NavItem(
            title: 'Home',
            tapEvent: () {},
          ),
          NavItem(
            title: 'Donate',
            tapEvent: () {},
          ),
          NavItem(
            title: 'Contact Us',
            tapEvent: () {},
          ),
          NavItem(
            title: 'Login',
            tapEvent: () {},
          ),
          NavItem(
            title: 'Shop',
            tapEvent: () {},
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key key,
    @required this.title,
    @required this.tapEvent
  }) : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title,
          style: TextStyle(
            color: kTextColor,
            fontWeight: FontWeight.w300
          ),
        ),
      ),
    );
  }
}