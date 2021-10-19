import 'dart:ui';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/artist.jpg'),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding:
                const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 40.0),
            child: buildBlurryWidget(
              const Text('Blurry Stuff',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 24,
                      color: Color(0xff0F1523),
                      fontWeight: FontWeight.bold)),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fames elementum ut amet, amet a sed neque. Pharetra tristique tincidunt sollicitudin eu, varius urna. ',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    color: Color(0xff0F1523),
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBlurryWidget(Widget _child, Widget __child) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.width,
          color: Colors.white.withOpacity(0.3),
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _child,
                const SizedBox(
                  height: 20,
                ),
                __child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
