import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.blue.shade50,
              ],
            )
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.blue,width: 3)
            // color: Colors.amberAccent
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .15,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(image: AssetImage('assets/images/ResQr_logo.png'))
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text('Version:2.3.55',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600,color: Colors.grey),),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text('Feedback',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text('Intake Forms',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text('Disclaimer',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text('Licence',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text('Third Party Licence',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text('First Voice Apps',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                ),
              ),
              
            ],
          ),
          
        ),
      ),
    );
  }
}