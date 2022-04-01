import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:res_qr_flutter/Models/catogryModel.dart';
import 'package:res_qr_flutter/Models/listdata.dart';
import 'package:res_qr_flutter/Models/yesnoModel.dart';
import 'package:res_qr_flutter/bottomNav/homeScreen.dart';
import 'package:res_qr_flutter/bottomNav/cat/video/videoplayer.dart';
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
<<<<<<< HEAD
  AssetsAudioPlayer player2 = AssetsAudioPlayer();
=======
>>>>>>> 0832f631ce459b45c4d2b998ee64b60c6099733b
  List<CatogryModel> category=[];
  List<List<CatogryModel>> listofcategory=[];
  

int? index;
bool boolYes = false;
bool boolNo = false;
int yess = 1;
String? yesAudio123;
String? nooAudio123;
int IncrementYesNO = 0;
String? yes1Dis = '';
String? yes2Dis = '';
String? yes3Dis = '';
String? no1Dis = '';
String? no2Dis = '';
String? no3Dis = '';
String? video = '';


bool isButtonEnabled = false;
bool isVideo = false;
    


   void AnimateIcon(){
    
    setState(() {

      isAnimated = !isAnimated;

      if(isAnimated){
        iconcontroller.forward();
        player.play();
<<<<<<< HEAD
        // player.stop();
=======
>>>>>>> 0832f631ce459b45c4d2b998ee64b60c6099733b
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
<<<<<<< HEAD
        
=======
>>>>>>> 0832f631ce459b45c4d2b998ee64b60c6099733b
      }else{
        iconcontroller.forward();
        player.stop();
        player.play();
      }
    });
  }
<<<<<<< HEAD
  
   void homebutton(){
    setState(() {
        player.stop();
        player2.stop();
=======
   void homebutton(){
    setState(() {
        player.stop();
>>>>>>> 0832f631ce459b45c4d2b998ee64b60c6099733b
        IncrementYesNO = 0;
        boolYes = false;
        boolNo = false;
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
          boolYes = false;
          boolNo = false;
          IncrementYesNO = 0;
          yess = 1;
          // isButtonEnabled = false;
          print('incrementtttttttt $IncrementYesNO');
          player.open(Audio(category[catindex].audio.toString(),),autoStart: false,showNotification: false);
<<<<<<< HEAD

          
=======
>>>>>>> 0832f631ce459b45c4d2b998ee64b60c6099733b
        }else{
          iconcontroller.reverse();
          player.stop();
          catindex = 0;
          boolYes = false;
          boolNo =false;
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
           setState(() {
            IncrementYesNO = 0;
          });
          yess = 1;
          player.open(Audio(category[catindex].audio.toString(),),autoStart: false,showNotification: false);
        }else{
          iconcontroller.reverse();
          player.stop();
          catindex = catindex - 1;
           setState(() {
            IncrementYesNO = 0;
          });
          yess = 1;
          player.open(Audio(category[catindex].audio.toString(),),autoStart: false,showNotification: false);
        }
<<<<<<< HEAD
        checkYesNoAvail();
=======
        // checkYesNoAvail();
>>>>>>> 0832f631ce459b45c4d2b998ee64b60c6099733b
        checkVideoAvail();
      });
   }
   void nextButton(){
      setState(() {
        if(isAnimated){
          iconcontroller.reverse();
          player.stop();
          catindex = catindex + 1;
           setState(() {
            IncrementYesNO = 0;
          });
          print('next button yes/no increment  $IncrementYesNO');
          player.open(Audio(category[catindex].audio.toString(),),autoStart: false,showNotification: false);
        }else{
          iconcontroller.reverse();
          player.stop();
          catindex = catindex + 1;
          setState(() {
            IncrementYesNO = 0;
          });
          
          print(' next button yes/no else increment  $IncrementYesNO');
          player.open(Audio(category[catindex].audio.toString(),),autoStart: false,showNotification: false);
        }
<<<<<<< HEAD
        checkYesNoAvail();
=======
        // checkYesNoAvail();
>>>>>>> 0832f631ce459b45c4d2b998ee64b60c6099733b
        checkVideoAvail();
      });
   }
   void yesButton(){
      setState(() {
                             
          // checkYesNoAvail();
          yess==1?
          yesAudio123 = category[catindex].yes1:
          yess == 2? yesAudio123 = category[catindex].yes2: 
          yesAudio123 = category[catindex].yes3;
          
          if(isAnimated){
            iconcontroller.forward();
            player.stop();
            catindex = catindex;
            boolYes = true;
            player.open(Audio(yesAudio123.toString(),),autoStart: true,showNotification: false);
            if (yess < 3) {
              yess++;
            }
            else{
              setState(() {
                isButtonEnabled = false;
              });
            }
            print("the value is $yess");
            setState(() {
              IncrementYesNO++;
              print("after tab on yes $IncrementYesNO");
            });
            
            // print("the value is $nooIncrement");
          }
          else{
            iconcontroller.forward();
            player.stop();
            catindex = catindex;
            boolYes = true;
            player.open(Audio(yesAudio123.toString(),),autoStart: true,showNotification: false);
            if (yess < 3) {
              yess++;
            }
            else{
              setState(() {
                isButtonEnabled = false;
              });
            }
            print(yess);
           setState(() {
              IncrementYesNO++;
            });
            print("after tab on yes $IncrementYesNO");}
    
        
          });
   }
   void noButton(){
     setState(() {
                            
     
        yess==1?
            nooAudio123 = category[catindex].no1:
            yess==2? nooAudio123 = category[catindex].no2 :
            nooAudio123 = category[catindex].no3.toString();

          
          if(isAnimated){
            iconcontroller.forward();
            player.stop();
            catindex = catindex;
            boolNo = true;
            player.open(Audio(nooAudio123.toString(),),autoStart: true,showNotification: false);
            if (yess < 3) {
              yess++;
            }
            else{
              setState(() {
                isButtonEnabled = false;
              });
            }
            isButtonEnabled = false;
            setState(() {
              IncrementYesNO++;
            });
            print('NO button yes/no increment  $IncrementYesNO');
          }
          else{
            iconcontroller.forward();
            player.stop();
            catindex = catindex;
            boolNo = true;
            player.open(Audio(nooAudio123.toString(),),autoStart: true,showNotification: false);
            if (yess < 3) {
              yess++;
            }
            else{
              setState(() {
                isButtonEnabled = false;
              });
            }
            isButtonEnabled = false;
            setState(() {
              IncrementYesNO++;
            });
            print('yes no else $IncrementYesNO');
          }
          // checkYesNoAvail();
      
          
        });
   }
  
 
  @override
  void initState() {
    //assign categories(model) to a list
    listofcategory=[
<<<<<<< HEAD
       Listdata().brething,
       Listdata().bleeding,
       Listdata().burn,
       Listdata().cpr,
       Listdata().eye, 
       Listdata().Heart, 
       Listdata().fracture,
       Listdata().headNeck,
       
       Listdata().heat,
       Listdata().multipleinjuries,
       Listdata().seizure,
=======
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
>>>>>>> 0832f631ce459b45c4d2b998ee64b60c6099733b
       Listdata().other
      ];
    
    category  = listofcategory[widget.index];      
    index = widget.index;
    
    iconcontroller = AnimationController(vsync: this,duration: Duration(milliseconds: 200));
    player.open(Audio(category[catindex].audio.toString(),),autoStart: false,showNotification: false);
<<<<<<< HEAD
    player2.open(Audio("assets/sounds/cpr.mp3"),autoStart: false,showNotification: false);

=======
>>>>>>> 0832f631ce459b45c4d2b998ee64b60c6099733b
    checkYesNoAvail();
    checkVideoAvail();
    // assigningYesNo();
    super.initState();
  }
 
  @override
  void dispose() {
    player.dispose();
<<<<<<< HEAD
    player2.dispose();
    super.dispose();
    
=======
    super.dispose();
>>>>>>> 0832f631ce459b45c4d2b998ee64b60c6099733b
  }
List<YesNoModel> yndata=[];


 

  @override
  Widget build(BuildContext context) {
    checkYesNoAvail();
    return SafeArea(
      child: Scaffold(
        
<<<<<<< HEAD
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //header
                Expanded(
                  flex: 1,
                  child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListTile(
                    // minLeadingWidth: 10,
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
                            ),
                ),
  
              Divider(
                color: Colors.blue,
                thickness: 2,
              ),
                Expanded(
                  flex: 1,
                  child: Container(
                  // height: MediaQuery.of(context).size.height * .07,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            homebutton();
                          },
                          child: Container(
                              height: 6.h,
                              // width: 11.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.blue, width: 1)),
                              child: Icon(
                                Icons.home,
                                size: 35,
                              )),
                        ),
                      ),
                      SizedBox(width: 6,),
                      Expanded(
                        flex: 
                        2,
                        child: GestureDetector(
                          onTap: () {
                           startOver();
                              },
                          child: Container(
                              height: 6.h,
                              // width: 30.w,
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
                      SizedBox(width: 6,),
                      Expanded(
                        flex: 3,
                        child: Container(
                            height: 6.h,
                            // width: 24.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.blue, width: 1)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                               Expanded(
                                 flex: 1,
                                 child: InkWell(
                                 onTap: (){
                                  player.seekBy(Duration(seconds: -10));
                                    },
                                    child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 2),
                                  child: Icon(Icons.fast_rewind,size: 30,))),
                               ),
                              
                                GestureDetector(
                                  onTap: ()async{
                                    setState(() {
                                    isAnimated = !isAnimated;
                                    if(isAnimated){
                                      iconcontroller.forward();
                                      player.stop();
                                      player2.play();
                                    }else{
                                      iconcontroller.reverse();
                                      player2.pause();
                                    }
                                  });
                                  
                                  },
                                   
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
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 2),
                                    child: AnimatedIcon(icon: AnimatedIcons.play_pause, progress: iconcontroller,size: 30,color: Colors.black,))
                                ),
                                
                              ],
                            )),
                      ),
                    ],
                  ),
                            ),
                ),
  
              Divider(
                color: Colors.blue,
                thickness: 2,
              ),
              Expanded(
                flex: 8,
                child: Stack(
                  children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .6,
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                  
                      boolYes == false && boolNo == false ?
                      category[catindex].description.toString() :
                    ( boolYes == true && IncrementYesNO==1)? category[catindex].yes1Des.toString():
                     ( boolYes == true && IncrementYesNO==2)? category[catindex].yes2Des.toString():
                     ( boolYes == true && IncrementYesNO==3)? category[catindex].yes3Des.toString():
                     ( boolNo == true && IncrementYesNO==1)? category[catindex].no1Des.toString():
                     ( boolNo == true && IncrementYesNO==2)? category[catindex].no2Des.toString():
                     ( boolNo == true && IncrementYesNO==3)? category[catindex].no3Des.toString():
                       
                     category[catindex].description.toString(),                               
                       
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                    isVideo? Positioned(
                       bottom: 1.h,
                       right: 2.h,
                       child: ElevatedButton(
                           style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Colors.blue.shade100),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(
                          color: Colors.blue, 
                          width: 2.0,
                      ),
                  ),
                          ),
                           ),
                           child: Text('Watch Video',
                           style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                           onPressed: () {
                 Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VideoPlayerWidget(data: category, index: catindex,)));
                        print('video controller is not empty $controller');
                           },
                     ),
                     ):Container(),
              
                    ],
              
                  ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Divider(
              color: Colors.blue,
              thickness: 2,
            ),
              Expanded(
                child: Row(
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
                      SizedBox(
                              width: 12,
                            ),
          
                          //yes and no buttons

=======
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //header
              header(),
              divider(),
              Container(
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
                    padding: EdgeInsets.only(left: 12),
                    child: GestureDetector(
                      onTap: () {
                        homebutton();
                      },
                      child: Container(
                          height: 6.h,
                          width: 11.w,
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
                          height: 6.h,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 5),
                    child: Expanded(
                      child: Container(
                          height: 6.h,
                          // width: 24.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.blue, width: 1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             InkWell(
                            onTap: (){
                              player.seekBy(Duration(seconds: -10));
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2),
                              child: Icon(Icons.fast_rewind,size: 30,))),
                              Center(
                                  child: Text(
                                'CPR Pacing',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              )),
                              GestureDetector(
                                onTap: () {
                                  
                                  // AnimateIcon(); 
                                  setState(() {
                                    AnimateIcon();
                                  });
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 2),
                                  child: AnimatedIcon(icon: AnimatedIcons.play_pause, progress: iconcontroller,size: 30,color: Colors.black,))
                              ),
                              
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
  
              divider(),
              Stack(
                children: [
                Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * .6,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
    
                    boolYes == false && boolNo == false ?
                    category[catindex].description.toString() :
                  ( boolYes == true && IncrementYesNO==1)? category[catindex].yes1Des.toString():
                   ( boolYes == true && IncrementYesNO==2)? category[catindex].yes2Des.toString():
                   ( boolYes == true && IncrementYesNO==3)? category[catindex].yes3Des.toString():
                   ( boolNo == true && IncrementYesNO==1)? category[catindex].no1Des.toString():
                   ( boolNo == true && IncrementYesNO==2)? category[catindex].no2Des.toString():
                   ( boolNo == true && IncrementYesNO==3)? category[catindex].no3Des.toString():
                   
                   category[catindex].description.toString(),                               
                   
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
      isVideo? Positioned(
         bottom: 1.h,
         right: 2.h,
         child: ElevatedButton(
             style: ButtonStyle(
               backgroundColor: MaterialStateProperty.all(Colors.blue.shade100),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(
                        color: Colors.blue, 
                        width: 2.0,
                    ),
                ),
            ),
             ),
             child: Text('Watch Video',
             style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
             onPressed: () {
               Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VideoPlayerWidget(data: category, index: catindex,)));
                      print('video controller is not empty $controller');
             },
       ),
       ):Container(),

      ],

    ),
              SizedBox(
                height: 1.h,
              ),
              divider(),
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
            ),
            ],
          ),
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
              thickness: 2,
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

  yesNoButton(){
    return Row(children: [
>>>>>>> 0832f631ce459b45c4d2b998ee64b60c6099733b
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
<<<<<<< HEAD
    ],),
                             
      ),
                
                  ],
                ),
        
              ),
            ),

          ),
        );
      }
 
=======
    ],);
  }

>>>>>>> 0832f631ce459b45c4d2b998ee64b60c6099733b
  checkYesNoAvail(){
    if(IncrementYesNO >2){
      setState(() {
              isButtonEnabled = false;
      });
      return;
    }
    if ((category[catindex].yes1Des!.isNotEmpty )   
      ||(category[catindex].yes2Des!.isNotEmpty)
      ||(category[catindex].yes2Des!.isNotEmpty)
      ||(category[catindex].no1Des!.isNotEmpty )   
      ||(category[catindex].no2Des!.isNotEmpty)
      ||(category[catindex].no3Des!.isNotEmpty)) {
      yes1Dis = category[catindex].yes1Des.toString();
      print("yes1Dis   $yes1Dis");
      yes2Dis = category[catindex].yes2Des.toString();
      print("yes2Dis   $yes2Dis");
      yes3Dis = category[catindex].yes3Des.toString();
      print("yes3Dis   $yes3Dis");
      
      if( (yes1Dis!.isNotEmpty)&&(IncrementYesNO == 0)) {
        print('yesIncremnt $IncrementYesNO');
        setState(() {
         isButtonEnabled = true;
          
        });}

      else if ((yes2Dis!.isNotEmpty)&&(IncrementYesNO ==1)) {
        setState(() {
          isButtonEnabled = true;
          // IncrementYesNO++;
        });
      }
      else if ((yes3Dis!.isNotEmpty)&&(IncrementYesNO == 2)){
        setState(() {
          isButtonEnabled = true;
          // IncrementYesNO++;
        });
      }
      else 
      {
        setState(() {
           isButtonEnabled = false;          
        });
      }}
    else{
    setState(() {
  isButtonEnabled = false;
    });
  }
  }
  
  checkVideoAvail(){
    if (category[catindex].video!.isNotEmpty ) {
      
     
      print(" video is ******** available ***** $yes1Dis");
      print(" yes 2 $video");
      setState(() {
        controller = VideoPlayerController.asset(category[catindex].video.toString()) ; 
        isVideo = true;   
      });
    }
    else{
    setState(() {
      isVideo = false;
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

}
