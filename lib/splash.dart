import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:menustrip/main.dart';
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
super.initState();
Future.delayed(Duration(seconds: 4)).then((value) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
    return myapp();
  },));
});
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(flex: 2,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Lottie.asset("lottie/21268-stay-home-and-cook.json"))
                ],
              ),
            ),
            Expanded(flex: 1,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Your Strips here",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Expanded(flex: 1,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Lottie.asset("lottie/99275-pacman-loading.json"))
                ],
              ),
            ),
          ],
        ));
  }


}
