import 'package:flutter/material.dart';
import 'package:res_qr_flutter/Models/listdata.dart';
import 'package:res_qr_flutter/bottomNav/cat/catogoryScreen.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  _InformationScreenState createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {

  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // title: Text('Current deals'),
        backgroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/ResQr_logoo.png',
                // 'assets/images/ResLogo.png'
              ),
              fit: BoxFit.fill,
              scale: 2,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount:Listdata().data.length,
              itemBuilder: (context, index) {
              return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context) =>
         CatogoryScreen(index: index,data: Listdata().data,)));
      },
      child:Card(
        child: Container(
          height: 90,
          child: Center(
            child: ListTile(
              minLeadingWidth: 10,
              leading: Image.asset(
                Listdata().data[index].image.toString(),
                height: 100,
                fit: BoxFit.fill,
              ),
              title: Text(
                Listdata().data[index].title.toString(),
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
    );
 
            }),
          ),
        ],
      ),
    );
  }
}