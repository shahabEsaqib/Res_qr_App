
import 'package:flutter/material.dart';
import 'package:res_qr_flutter/bottomNav/info.dart';
import 'package:res_qr_flutter/bottomNav/informationScreen.dart';

import 'cpr.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int _selectedIndex = 0;
  PageController _pageController = new PageController();
  // final List<Widget> _widgetOption = <Widget>[

  // ]

  void ontapped(index){
    setState(() {
      _selectedIndex=index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
   
        body: PageView(
          controller: _pageController,
          children: [
            InformationScreen(),
            CprScreen(),
            InfoScreen()
          ]
        ),
        bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: ontapped, 
          elevation: 0,
          items: <BottomNavigationBarItem>[
        
          BottomNavigationBarItem(icon:Icon(Icons.home),label: 'Select'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "CPR"),
          BottomNavigationBarItem(icon: Icon(Icons.info),label: "Info"),
        ],
        
        
        ),
      ),
    );
  }
}
