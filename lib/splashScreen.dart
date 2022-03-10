import 'dart:async';
import 'package:flutter/material.dart';
import 'package:res_qr_flutter/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();


      Timer(Duration(seconds: 3), ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())));
   
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