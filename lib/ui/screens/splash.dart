import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:sample_flare/ui/screens/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3)).then((_) => Navigator.of(context)
        .pushReplacement(
            MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          child: FlareActor(
            "assets/ball.flr",
            animation: "spin",
          ),
        ),
      ),
    );
  }
}
