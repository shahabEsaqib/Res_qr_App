import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:res_qr_flutter/Models/catogryModel.dart';
import 'package:res_qr_flutter/Models/listdata.dart';
import 'package:res_qr_flutter/Models/yesnoModel.dart';
import 'package:res_qr_flutter/bottomNav/homeScreen.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

class CatogoryScreen extends StatefulWidget {
  int index;
  List? data;

  CatogoryScreen(
      {Key? key,
      required this.index,
      this.data,})
      : super(key: key);

  @override
  _CatogoryScreenState createState() => _CatogoryScreenState();
}

class _CatogoryScreenState extends State<CatogoryScreen> with TickerProviderStateMixin{
  late AnimationController iconcontroller;
  VideoPlayerController? controller;
  

  bool isAnimated = false;
  bool showPlay = true;
  bool showPause = false;
  int catindex=0;

  AssetsAudioPlayer player = AssetsAudioPlayer();
  List<CatogryModel> category=[];
  List<List<CatogryModel>> listofcategory=[];
  

int? index;
bool yes = false;
bool no = false;
int yess = 1;
int noo = 1;
String? yes123 ;
String? noo123;
int IncrementYesNO = 0;
String? yes1Dis = '';
String? yes2Dis = '';
String? yes3Dis = '';
String? no1Dis = '';
String? no2Dis = '';
String? no3Dis = '';


bool isButtonEnabled = false;
    


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
   void PlayerAgain(){
    
    setState(() {

      isAnimated = !isAnimated;

      if(isAnimated){
        iconcontroller.forward();
        player.play();
      }else{
        iconcontroller.forward();
        player.stop();
        player.play();
      }
    });
  }
   void homebutton(){
    setState(() {
        player.stop();
        IncrementYesNO = 0;
        yes = false;
        no = false;
        yess = 1;
        print('incrementtttttttt $IncrementYesNO');
          });
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (builder) => HomeScreen()));
  }
   void startOver(){
          setState(() {
        if(isAnimated){
          iconcontroller.reverse();
          player.stop();
          catindex = 0;
          yes = false;
          no = false;
          IncrementYesNO = 0;
          yess = 1;
          // isButtonEnabled = false;
          print('incrementtttttttt $IncrementYesNO');
          player.open(Audio(category[catindex].audio.toString(),),autoStart: false,showNotification: false);
        }else{
          iconcontroller.reverse();
          player.stop();
          catindex = 0;
          yes = false;
          no =false;
          yess = 1;
          IncrementYesNO = 0;
          // isButtonEnabled = false;
          print('incrementtttttttt $IncrementYesNO');
          player.open(Audio(category[catindex].audio.toString(),),autoStart: false,showNotification: false);
        }
      });
                            // print(indexx);
   }
   void backButton(){
      setState(() {
        if(isAnimated){
          iconcontroller.reverse();
          player.stop();
          catindex = catindex - 1;
          IncrementYesNO = 0;
          player.open(Audio(category[catindex].audio.toString(),),autoStart: false,showNotification: false);
        }else{
          iconcontroller.reverse();
          player.stop();
          catindex = catindex - 1;
          IncrementYesNO = 0;
          player.open(Audio(category[catindex].audio.toString(),),autoStart: false,showNotification: false);
        }
      });
   }
   void nextButton(){
      setState(() {
        if(isAnimated){
          iconcontroller.reverse();
          player.stop();
          catindex = catindex + 1;
          IncrementYesNO = 0;
          player.open(Audio(category[catindex].audio.toString(),),autoStart: false,showNotification: false);
        }else{
          iconcontroller.reverse();
          player.stop();
          catindex = catindex + 1;
          IncrementYesNO = 0;
          player.open(Audio(category[catindex].audio.toString(),),autoStart: false,showNotification: false);
        }
        checkYesNoAvail();
      });
   }
   void yesButton(){
      setState(() {
                             
        });
          yess==1?
          yes123 = category[catindex].yes1:
          yess == 2? yes123 = category[catindex].yes2: 
          yes123 = category[catindex].yes3;
          
          if(isAnimated){
            iconcontroller.forward();
            player.stop();
            catindex = catindex;
            yes = true;
            player.open(Audio(yes123.toString(),),autoStart: true,showNotification: false);
            if (yess < 3) {
              yess++;
            }
            else{
              setState(() {
                isButtonEnabled = false;
              });
            }
            print("the value is $yess");
            IncrementYesNO++;
            // print("the value is $nooIncrement");
          }
          else{
            iconcontroller.forward();
            player.stop();
            catindex = catindex;
            yes = true;
            player.open(Audio(yes123.toString(),),autoStart: true,showNotification: false);
            if (yess < 3) {
              yess++;
            }
            else{
              setState(() {
                isButtonEnabled = false;
              });
            }
            print(yess);
            IncrementYesNO++;
            // print('the value is $nooIncrement');
          }
          setState(() {
          });
   }
   void noButton(){
     setState(() {
                            
        });
        yess==1?
            noo123 = category[catindex].no1:
            noo123==2? noo123 = category[catindex].no2 :
            noo123 = category[catindex].no3.toString();

          
          if(isAnimated){
            iconcontroller.forward();
            player.stop();
            catindex = catindex;
            no = true;
            player.open(Audio(noo123.toString(),),autoStart: true,showNotification: false);
            if (yess < 3) {
              yess++;
            }
            else{
              setState(() {
                isButtonEnabled = false;
              });
            }
            // isButtonEnabled = false;
            IncrementYesNO++;
            print('this goes to negative $IncrementYesNO');
          }
          else{
            iconcontroller.forward();
            player.stop();
            catindex = catindex;
            no = true;
            player.open(Audio(noo123.toString(),),autoStart: true,showNotification: false);
            if (yess < 3) {
              yess++;
            }
            else{
              setState(() {
                isButtonEnabled = false;
              });
            }
            // isButtonEnabled = false;
            IncrementYesNO++;
            print('this goes to negative $IncrementYesNO');
          }
        setState(() {
          
        });
   }
 
 
  @override
  void initState() {
    //assign categories(model) to a list
    listofcategory=[
       Listdata().multipleinjuries,
       Listdata().headNeck,
       Listdata().cpr,
       Listdata().brething,
       Listdata().Heart,  
       Listdata().bleeding,
       Listdata().burn,
       Listdata().fracture,
       Listdata().eye,
       Listdata().seizure,
       Listdata().heat,
       Listdata().other
      ];
    
    category  = listofcategory[widget.index];      
    index = widget.index;
    
    iconcontroller = AnimationController(vsync: this,duration: Duration(milliseconds: 200));
    player.open(Audio(category[catindex].audio.toString(),),autoStart: false,showNotification: false);
    controller = VideoPlayerController.asset(category[catindex].video.toString())
    ..addListener(() {setState(() {});})
    ..setLooping(false)..initialize().then((value) => controller!.pause());

    //assigningYesNo();
    super.initState();
  }
List<YesNoModel> yndata=[];


  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //header
              header(),
              divider(),
             startandvoice(),
              divider(),
              description(),
              SizedBox(
                height: 1.h,
              ),
              divider(),
              bottomButtons()
            ],
          ),
        ),
      ),
    );
  }

  header(){

    return   Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListTile(
                minLeadingWidth: 10,
                leading: Image.asset(
                  widget.data![index!].image.toString(),
                  height: 100,
                  fit: BoxFit.fill,
                ),
                title: Text(
                  widget.data![index!].title.toString(),
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
              ),
            );
  }
  divider(){
    return Divider(
              color: Colors.blue,
              thickness: 1,
            );
              }

  startandvoice(){

    return  Container(
              height: MediaQuery.of(context).size.height * .07,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Colors.blue.shade50,
                ],
              )),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: GestureDetector(
                      onTap: () {
                        homebutton();
                      },
                      child: Container(
                          height: 40,
                          width: 10.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.blue, width: 1)),
                          child: Icon(
                            Icons.home,
                            size: 35,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: GestureDetector(
                      onTap: () {
                       startOver();
                          },
                      child: Container(
                          height: 40,
                          width: 30.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.blue, width: 1)),
                          child: Center(
                              child: Text(
                            'Start Over',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ))),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      child: Container(
                          height: 40,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.blue, width: 1)),
                          child: Row(
                            children: [
                             InkWell(
                            onTap: (){
                              player.seekBy(Duration(seconds: -10));
                            },
                            child: Icon(Icons.fast_rewind,size: 25,)),
                              Expanded(
                                child: Center(
                                    child: Text(
                                  'CPR Pacing',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w500),
                                )),
                              ),
                              GestureDetector(
                                onTap: () {
                                  
                                  // AnimateIcon(); 
                                  setState(() {
                                    AnimateIcon();
                                  });
                                },
                                child: AnimatedIcon(icon: AnimatedIcons.play_pause, progress: iconcontroller,size: 25,color: Colors.black,)
                              ),
                              
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            );
  }

  description(){
    return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Container(
                height: MediaQuery.of(context).size.height/1.8,
                width: MediaQuery.of(context).size.width,
                child: Text(

                  yes == false && no == false ?
                  category[catindex].description.toString() :
                ( yes == true && IncrementYesNO==1)? category[catindex].yes1Des.toString():
                 ( yes == true && IncrementYesNO==2)? category[catindex].yes2Des.toString():
                 ( yes == true && IncrementYesNO==3)? category[catindex].yes3Des.toString():
                 ( no == true && IncrementYesNO==1)? category[catindex].no1Des.toString():
                 ( no == true && IncrementYesNO==2)? category[catindex].no2Des.toString():
                 ( no == true && IncrementYesNO==3)? category[catindex].no3Des.toString():
                 
                 category[catindex].description.toString(),                               
                 
                  style: TextStyle(fontSize: 25),
                ),
              ),
            );
  }

  bottomButtons(){
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  //back and next buttons
                  backandNextBotton(),
                  SizedBox(
                    width: 12,
                  ),

                 //yes and no buttons
                 yesNoButton(),
                ],
              ),
            );     
  }

  backandNextBotton(){
    return Row(
      children: [
        //back button
        catindex == 0
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
            backButton();
            // print(indexx);
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
        //next button
        catindex == category.length -1
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
            nextButton();
            // print(indexx);
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
      ],
    );
  }

  checkYesNoAvail(){
    if (category[catindex].yes1Des!.isNotEmpty) {
      yes1Dis = category[catindex].yes1Des.toString();
      yes2Dis = category[catindex].yes2Des.toString();
      yes3Dis = category[catindex].yes3Des.toString();
      /*yes1Dis = yndata[0].yes;no1Dis = yndata[0].no;
      yes2Dis = yndata[1].yes;no2Dis = yndata[1].no;
      yes3Dis = yndata[2].yes;no3Dis = yndata[2].no;
      */
      print(" yes 1 $yes1Dis");
      print(" yes 2 $yes2Dis");
      print(" yes 3 $yes3Dis");
      if (yes1Dis!.isNotEmpty) {
        print("yesno is not empty");
        setState(() {
          isButtonEnabled = true;
        });
      }

      else if (((yes1Dis!.isNotEmpty) || (yes2Dis!.isNotEmpty)) &&
          (IncrementYesNO == 1)) {
        setState(() {
          isButtonEnabled = true;
        });
      }
      else if (((yes1Dis!.isNotEmpty) || (yes2Dis!.isNotEmpty) ||
          (yes3Dis!.isNotEmpty)) && (IncrementYesNO == 2)) {
        setState(() {
          isButtonEnabled = true;
        });
      }
      // else if(IncrementYesNO==3 || IncrementYesNO == 2 || IncrementYesNO == 1 || IncrementYesNO == 0){
      //    setState(() {
      //      isButtonEnabled = false;
      //     });
      //  }
      else
        isButtonEnabled = false;
    }
    else{
    setState(() {
  isButtonEnabled = false;
    });
  }
  }

  assigningYesNo(){
    setState(() {
      //assign yes data
      if (category[catindex].yes1Des!.isNotEmpty) {
        yes1Dis = category[catindex].yes1Des.toString();
        yes2Dis = category[catindex].yes2Des.toString();
        yes3Dis = category[catindex].yes3Des.toString();

        //assign no data
        no1Dis = category[catindex].no1Des.toString();
        no2Dis = category[catindex].no2Des.toString();
        no3Dis = category[catindex].no3Des.toString();

        //add yes no to a list
        yndata.add(YesNoModel(yes: yes1Dis, no: no1Dis));
        yndata.add(YesNoModel(yes: yes2Dis, no: no2Dis));
        yndata.add(YesNoModel(yes: yes3Dis, no: no3Dis));
      }
      else{
        setState(() {
          isButtonEnabled = false;
        });
      }
    });
  }
  yesNoButton(){
    return Row(children: [
      //yes button
      isButtonEnabled?
      GestureDetector(
          onTap: () {
            yesButton();
            // print(indexx);
          },

          child: Container(
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
          )
      ) :
      Container(
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

      //no button
      isButtonEnabled?
      GestureDetector(
        onTap: () {
          noButton();
          // print(indexx);
        },
        child:  Container(
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

      ):
      Container(
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
    ],);
  }
}
