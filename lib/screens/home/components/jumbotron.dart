import 'package:flutter/material.dart';
import 'package:flutter_web/components/main_button.dart';

import '../../../constants.dart';

class Jumbotron extends StatelessWidget {
  const Jumbotron({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Buy ',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w800
                          )
                        ),
                        TextSpan(
                          text: 'Cruelty Free',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                            color: kPrimaryColor
                          )
                        ),
                      ]
                    )
                  ),

                  Text(
                    'Makeup Products',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800
                    ),
                  ),

                  Text(
                    'Online Today!',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Help us in making this world a better place for animals.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300
                    ),
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: <Widget>[
                      MainButton(
                        title: 'GET STARTED',
                        color: kPrimaryColor,
                        tapEvent: () {},
                      ),

                      SizedBox(width: 10),

                      MainButton(
                        title: 'WATCH VIDEO',
                        color: kSecondaryColor,
                        tapEvent: () {},
                      )
                    ],
                  )
                ],
              ),
            )
          ),

          Expanded(
            child: Image.asset('assets/images/main.png')
          )
        ],
      )
    );
  }
}
