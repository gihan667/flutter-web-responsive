import 'package:flutter/material.dart';

import 'menu_item.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              NavItem(
                title: 'Home',
                tapEvent: () {},
              ),

              SizedBox(height: 10),

              NavItem(
                title: 'Donate',
                tapEvent: () {},
              ),

              SizedBox(height: 10),
              
              NavItem(
                title: 'Contact Us',
                tapEvent: () {},
              ),

              SizedBox(height: 10),
              
              NavItem(
                title: 'Login',
                tapEvent: () {},
              ),

              SizedBox(height: 10),
              
              NavItem(
                title: 'Shop',
                tapEvent: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}