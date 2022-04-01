import 'dart:async';
import 'package:flutter/material.dart';
import 'package:res_qr_flutter/bottomNav/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();


<<<<<<< HEAD:lib/splash/splashScreen.dart
      Timer(Duration(seconds: 3), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen())));
=======
      Timer(Duration(seconds: 4), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen())));
>>>>>>> 0832f631ce459b45c4d2b998ee64b60c6099733b:lib/splashScreen.dart
   
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:AppBar(title: Text("New Blog"),),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            height: MediaQuery.of(context).size.height ,
            width: MediaQuery.of(context).size.width ,
            image: AssetImage("assets/images/default.png",),fit: BoxFit.fill,),
         
        ],
      ),
    );
  }
}