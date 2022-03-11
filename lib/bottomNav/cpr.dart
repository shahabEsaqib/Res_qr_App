import 'package:flutter/material.dart';
import 'package:res_qr_flutter/Models/dataModel.dart';
import 'package:res_qr_flutter/Models/listdata.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class CprScreen extends StatefulWidget {
  
  CprScreen({
    Key? key,
  }) : super(key: key);

  @override
  _CprScreenState createState() => _CprScreenState();
}

class _CprScreenState extends State<CprScreen> with TickerProviderStateMixin{
  List<DataModel>? data;
  int? indexx=2;

  late AnimationController iconcontroller;
  bool isAnimated = false;
  bool showPlay = true;
  bool showPause = false;

  AssetsAudioPlayer player = AssetsAudioPlayer();

  @override
  void initState() {
    data = Listdata().data;
    super.initState();
    iconcontroller = AnimationController(vsync: this,duration: Duration(milliseconds: 1000));
    player.open(Audio(data![indexx!].audio.toString(),),autoStart: false,showNotification: false);
  }
  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }
  void AnimateIcon(){
    setState(() {
      isAnimated = !isAnimated;

      if(isAnimated){
        iconcontroller.forward();
        player.play();
      }else{
        iconcontroller.reverse();
        player.pause();
      }
    });
  }
   
  @override
  Widget build(BuildContext context) {
        return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListTile(
              minLeadingWidth: 10,
              leading: Image.asset(
              data![indexx!].image.toString(),
              height: 100,
              fit: BoxFit.fill,
              ),
              title: Text(
              data![indexx!].title.toString(),
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
          ),
            ),
            Divider(color: Colors.blue,thickness: 2,height: 10,),
            Container(
              height: MediaQuery.of(context).size.height * .07,
              width: MediaQuery .of(context).size.width,
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
            child: Row(
              children: [ 
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: GestureDetector(
                    onTap: (){
                      
                              AnimateIcon();
                               
                            },
                    child: Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.blue,width: 1)
                      ),
                      child: Center(child: Text('Start Over',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),))
                    ),
                  ),
                ),
                 Expanded(
                   child: Padding(
                    padding: const EdgeInsets.only(left: 50,right: 10),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.blue,width: 1)
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: (){
                              player.seekBy(Duration(seconds: -10));
                            },
                            child: Icon(Icons.fast_rewind,size: 35,)),
                          Center(child: Text('CPR Pacing',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),)),
                          
                          GestureDetector(
                            
                            onTap: (){
                             setState(() {
                               AnimateIcon();
                             });
                              
                               
                            },
                            child: AnimatedIcon(icon: AnimatedIcons.play_pause, progress: iconcontroller,size: 35,color: Colors.black,)),
                          
                        ],
                      )
                    ),
                                 ),
                 ),
              ],
            ),
            ),
 
            Divider(color: Colors.blue,thickness: 2,height: 0,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Container(
                height: MediaQuery.of(context).size.height * .59,
                width: MediaQuery .of(context).size.width,
                child: Text("Take the victam's shulder or shout  'Are you Okay?' CPR should only be performed if the victim is uncounsiuos OR not brething. if this does not describe the victim,press the button that most closely fits the emergency.\n(Press NEXT to continue)",style: TextStyle(fontSize: 25),),
              ),
            ),
            Divider(color: Colors.blue,thickness: 2,height: 1,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  indexx == 0
                      ? Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.grey,
                                  Colors.grey,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: Colors.black, width: 1)),
                          height: MediaQuery.of(context).size.height * .07,
                          width: MediaQuery.of(context).size.width * .2,
                          child: Center(
                              child: Text(
                            '<Back',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                            ),
                          )),
                        )
                      : InkWell(
                          onTap: () {
                            setState(() {
                              indexx = indexx! - 1;
                            });
                            print(indexx);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.grey,
                                    Colors.black,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                            height: MediaQuery.of(context).size.height * .07,
                            width: MediaQuery.of(context).size.width * .2,
                            child: Center(
                                child: Text(
                              '<Back',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                              ),
                            )),
                          ),
                        ),
                  SizedBox(
                    width: 16,
                  ),
                  indexx == Listdata().data.length -1
                  ?  Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.grey,
                                    Colors.black,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                            height: MediaQuery.of(context).size.height * .07,
                            width: MediaQuery.of(context).size.width * .2,
                            child: Center(
                                child: Text(
                              'End',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                              ),
                            )),
                          )
                      : InkWell(
                          onTap: () {
                            setState(() {
                              indexx = indexx! + 1;
                              // iconcontroller!.reverse();
                              // player.stop();

                            });
                            print("The current index is $indexx");
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.grey,
                                    Colors.black,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                            height: MediaQuery.of(context).size.height * .07,
                            width: MediaQuery.of(context).size.width * .2,
                            child: Center(
                                child: Text(
                              'Next>',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                              ),
                            )),
                          ),
                        ),
                  SizedBox(
                    width: 32,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white,
                            Colors.green,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black, width: 1)),
                    height: MediaQuery.of(context).size.height * .07,
                    width: MediaQuery.of(context).size.width * .2,
                    child: Center(
                        child: Text(
                      'Yes',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white,
                              Colors.red,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black, width: 1)),
                      height: MediaQuery.of(context).size.height * .07,
                      width: MediaQuery.of(context).size.width * .2,
                      child: Center(
                          child: Text(
                        'No',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              ),
            )
         
          ],
        ),
      ),
    );

  }
}