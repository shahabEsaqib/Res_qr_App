import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:res_qr_flutter/Models/catogryModel.dart';
import 'package:res_qr_flutter/Models/listdata.dart';
import 'package:res_qr_flutter/homeScreen.dart';
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
  List<CatogryModel> cat=[];
  List<List<CatogryModel>> all=[];
  

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


bool isButtonEnabled = false;
   bool isEmpty(){
    setState(() {
          if((yes1Dis != '') && (IncrementYesNO == 0)){
            isButtonEnabled=true;
          }
          else if(((yes1Dis != '')||(yes2Dis != ''))&& (IncrementYesNO ==1)){
            isButtonEnabled=true;
          }else if(((yes1Dis != '')||(yes2Dis != '')||(yes3Dis != '')) &&(IncrementYesNO==2 )){
            isButtonEnabled = true;
          }
          else if(IncrementYesNO==3 || IncrementYesNO == 2 || IncrementYesNO == 1 || IncrementYesNO == 0){
            isButtonEnabled = false;
          }
        });
       return isButtonEnabled; 
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
          player.open(Audio(cat[catindex].audio.toString(),),autoStart: false,showNotification: false);
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
          player.open(Audio(cat[catindex].audio.toString(),),autoStart: false,showNotification: false);
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
          player.open(Audio(cat[catindex].audio.toString(),),autoStart: false,showNotification: false);
        }else{
          iconcontroller.reverse();
          player.stop();
          catindex = catindex - 1;
          IncrementYesNO = 0;
          player.open(Audio(cat[catindex].audio.toString(),),autoStart: false,showNotification: false);
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
          player.open(Audio(cat[catindex].audio.toString(),),autoStart: false,showNotification: false);
        }else{
          iconcontroller.reverse();
          player.stop();
          catindex = catindex + 1;
          IncrementYesNO = 0;
          player.open(Audio(cat[catindex].audio.toString(),),autoStart: false,showNotification: false);
        }
      });
   }
   void yesButton(){
      setState(() {
                             
        });
          yess==1?
          yes123 = cat[catindex].yes1:
          yess == 2? yes123 = cat[catindex].yes2: 
          yes123 = cat[catindex].yes3;
          
          if(isAnimated){
            iconcontroller.forward();
            player.stop();
            catindex = catindex;
            yes = true;
            player.open(Audio(yes123.toString(),),autoStart: true,showNotification: false);
            yess++;
            print("the value is $yess");
            IncrementYesNO++;
            // print("the value is $nooIncrement");
          }else{
            iconcontroller.forward();
            player.stop();
            catindex = catindex;
            yes = true;
            player.open(Audio(yes123.toString(),),autoStart: true,showNotification: false);
            yess++;
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
            noo123 = cat[catindex].no1:
            yess==2? noo123 = cat[catindex].no2 :
            noo123 = cat[catindex].no3.toString();

          
          if(isAnimated){
            iconcontroller.forward();
            player.stop();
            catindex = catindex;
            no = false;
            player.open(Audio(noo123.toString(),),autoStart: true,showNotification: false);
            yess++;
            // isButtonEnabled = false;
            IncrementYesNO++;
            print('this goes to negative $IncrementYesNO');
          }else{
            iconcontroller.forward();
            player.stop();
            catindex = catindex;
            no = false;
            player.open(Audio(noo123.toString(),),autoStart: true,showNotification: false);
            yess++;
            // isButtonEnabled = false;
            IncrementYesNO++;
            print('this goes to negative $IncrementYesNO');
          }
        setState(() {
          
        });
   }
 
 
  int? indexx;
  @override
  void initState() {
    all=[
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
    int index = widget.index;
    cat  = all[index];      
    indexx = widget.index;
    super.initState();
    iconcontroller = AnimationController(vsync: this,duration: Duration(milliseconds: 200));
    player.open(Audio(cat[catindex].audio.toString(),),autoStart: false,showNotification: false);
    controller = VideoPlayerController.asset(cat[catindex].video.toString())
    ..addListener(() {setState(() {});})
    ..setLooping(false)..initialize().then((value) => controller!.pause());

    TextEditingController yes1Disss = TextEditingController(text: cat[catindex].yes1Des);
    TextEditingController yes2Disss = TextEditingController(text: cat[catindex].yes2Des);
    TextEditingController yes3Disss = TextEditingController(text: cat[catindex].yes3Des);
    //  yes1Dis = cat[catindex].yes1Des.toString();
    //  yes2Dis = cat[catindex].yes2Des.toString();
    //  yes3Dis = cat[catindex].yes3Des.toString();


  }
  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('hello'),
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListTile(
                minLeadingWidth: 10,
                leading: Image.asset(
                  widget.data![indexx!].image.toString(),
                  height: 100,
                  fit: BoxFit.fill,
                ),
                title: Text(
                  widget.data![indexx!].title.toString(),
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Divider(
              color: Colors.blue,
              thickness: 2,
            ),
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
                            child: Icon(Icons.fast_rewind,size: 35,)),
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
                                child: AnimatedIcon(icon: AnimatedIcons.play_pause, progress: iconcontroller,size: 35,color: Colors.black,)
                              ),
                              
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.blue,
              thickness: 2,
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Container(
                height: 65.h,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  
                  
                  yes == false && no == false ?
                  cat[catindex].description.toString() :
                ( yes == true && IncrementYesNO==1)? cat[catindex].yes1Des.toString():
                 ( yes == true && IncrementYesNO==2)? cat[catindex].yes2Des.toString():
                 ( yes == true && IncrementYesNO==3)? cat[catindex].yes3Des.toString():
                 ( no == true && IncrementYesNO==1)? cat[catindex].no1Des.toString():
                 ( no == true && IncrementYesNO==2)? cat[catindex].no2Des.toString():
                 ( no == true && IncrementYesNO==3)? cat[catindex].no3Des.toString():
                 
                 cat[catindex].description.toString(),                               
                 
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Divider(
              color: Colors.blue,
              thickness: 2,
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
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
                  catindex == cat.length -1 
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
                  SizedBox(
                    width: 32,
                  ),
                   isEmpty()?
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
                  ) :Container(
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
                  isEmpty()? GestureDetector(
                    onTap: () {
                          noButton();
                          // print(indexx);
                        },
                    child: Expanded(
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
                  ):Expanded(
                      child: Container(
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
