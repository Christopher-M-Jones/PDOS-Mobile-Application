import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'main.dart';
import 'dart:async';
import 'package:flutter_hooks/flutter_hooks.dart';
/*
class splashScreen extends HookWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController();
    return Scaffold(
      body: Center(
        child: Lottie.asset('anis/pdos9.json', controller: animationController,
            onLoaded: (composition) {
          //Listen for animation completion
          animationController.addStatusListener((status) {
            if(status == AnimationStatus.completed){
              model.indicateAnimationComplete()
            }
          })
          animationController
            //configure the animation controller with duration of lottie file
            ..duration = composition.duration
            //start the animation
            ..forward();
        }),
      ),
    );
  }
}
*/
/*
class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  static const bgcolor = const Color(0x444345);

  //Animation
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
    Timer(
        Duration(milliseconds: 9000),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    void handleTimeout() {
      // callback function
      // Do some work.
    }

    Timer scheduleTimeout([int milliseconds = 10000]) =>
        Timer(Duration(milliseconds: milliseconds), handleTimeout);

    scheduleTimeout(6 * 1000);
    bool animation = true;

    return Scaffold(
      //backgroundColor: bgcolor,
      body: Center(
        child: Lottie.asset('anis/pdos9.json', animate: true),
      ),
    );
  }
}
*/
