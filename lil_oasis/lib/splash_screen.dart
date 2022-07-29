import 'package:flutter/material.dart';
import 'package:lil_oasis/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  int firstTime = 0;

  SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    data(widget.firstTime);
    super.initState();
  }

  int? value;
  void data(value) async {
    final prefer = await SharedPreferences.getInstance();
    await prefer.setInt("key", value);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/danceUnderMoon.jpg"),
                fit: BoxFit.cover)),
        child: InkWell(
          onTap: () {
            if (widget.firstTime == 0) {
              Navigator.pushReplacementNamed(context, ('/onboarding_screen'));
              widget.firstTime++;
            } else {
              Navigator.pushReplacementNamed(context, ("/main_screen"));
            }
          },
        ),
      ),
    );
  }
}
// Navigator.pushNamed(context, '/onboarding_screen');