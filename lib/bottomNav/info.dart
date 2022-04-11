import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({ Key? key }) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  TextStyle myStyle = TextStyle(fontSize: 20,color: Colors.red);
  TextStyle myBoldStyle = TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold);
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
                  image: DecorationImage(image: AssetImage('assets/images/ResQr_logoo.png'))
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
              GestureDetector(
                onTap: (){
                  showMyDialog();
                },
                child: Card(
                  child: ListTile(
                    leading: Text('Disclaimer',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                  ),
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

  Future<void> showMyDialog() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Center(child: Text('WARNING!',style: myStyle,)),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Center(child: Text('In any medical-related emergency within the United State dial 911.',style: myBoldStyle,)),
              SizedBox(height: 2.h,),
              Center(child: Text('Always check the scene to be sure it is safe to aproach and helo others.',style: myBoldStyle,)),
              SizedBox(height: 2.h,),
              Center(child: Text('DECISION CONCERNING CPR & AED USE ARE LIFE AND DEATH DECISIONS THAT MAY INVOLVE RISK OF SERIOUS INJURY OR DEATH.',style: myBoldStyle,)),
              SizedBox(height: 2.h,),
              Center(child: Text('if you suspect serious injury may result to you personally, do not aproach and call 911 or seek other emergency designated care assistance.',style: myBoldStyle,)),
              SizedBox(height: 2.h,),
              Center(child: Text('Thoroughly fimiliarize yourself with this mobile application and its operation.',style: myBoldStyle,)),

            ],
          ),
        ),
        actions: <Widget>[
          Center(
            child: TextButton(
              child: Text('OK',style: TextStyle(color: Colors.blue,fontSize: 20)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      );
    },
  );
}
}