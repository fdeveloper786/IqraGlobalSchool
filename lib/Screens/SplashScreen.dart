
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';

import 'Homepage.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimeout() {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () =>
        Navigator.of(context).pushReplacement(
            new MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimeout();
  }

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return WillPopScope(
      onWillPop: () {
        return exit(0);
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: FittedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Image.asset('assets/icons/logo.png',
                      height: 250,
                      //scale: 3.5,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Iqra Global School',
                    style: TextStyle(color: Colors.black,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Signika',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}