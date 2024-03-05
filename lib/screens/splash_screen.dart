import 'dart:async';
import 'package:ardemo/utills/color_resources.dart';
import 'package:ardemo/utills/size_boxs.dart';
import 'package:ardemo/utills/styles.dart';
import 'package:flutter/material.dart';

import '../utills/images.dart';
import 'dashboard_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    route();
  }

  void route() {
    Timer(const Duration(seconds: 2), () async {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (context) =>
              const DashboardScreen()),
              (Route<dynamic> route) => false);
    });
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(Images.appLogo,fit: BoxFit.contain,width:150,)
          ),
          hSizedBox2,
          Text(
              "AR Demo",
              style: FontStyleUtilities.f24(
                  fontColor: colorPrimary, fontWeight: FWT.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
