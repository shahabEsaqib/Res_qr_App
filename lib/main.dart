
import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:res_qr_flutter/bottomNav/homeScreen.dart';
>>>>>>> 0832f631ce459b45c4d2b998ee64b60c6099733b
import 'package:res_qr_flutter/splash/splashScreen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(),
      );
      }
    );
  }
}

