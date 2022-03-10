import 'package:res_qr_flutter/Models/catogryModel.dart';
import 'package:res_qr_flutter/Models/dataModel.dart';

class Listdata{

List<DataModel> data = [
 DataModel(
title: 'Multiple Injuries',
image: 'assets/images/multipleinjurybutton.png',
audio:'assets/sounds/BC2.1.6.mp3'
 ),
  DataModel(
title: 'Head, Neck & Spine',
image: 'assets/images/headneckbutton.png',
audio:'assets/sounds/BC2.1.7.mp3'
 ),
  DataModel(
title: 'CPR & Unconscious',
image: 'assets/images/cprunconsciousbutton.png',
audio:'assets/sounds/CU17.0.mp3'
 ),
  DataModel(
title: 'Breating, Choking & Drowning',
image: 'assets/images/breathingchokingbutton.png',
audio:'assets/sounds/BS9.0.mp3'
 ),
  DataModel(
title: 'Heart, Stroke & Chest Pain',
image: 'assets/images/heartchestbutton.png',
audio:'assets/sounds/BS10.6.mp3'
 ),
  DataModel(
title: 'Bleeding, Shock & Childbirth',
image: 'assets/images/bleedingchildbirthbutton.png',
audio:'assets/sounds/BU3.5.mp3'
 ),
  DataModel(
title: 'Burn & Electric',
image: 'assets/images/burnelectricbutton.png',
audio:'assets/sounds/C2-0.mp3'
 ),
  DataModel(
title: 'fracture & Sprain',
image: 'assets/images/fracturesprainbutton.png',
audio:'assets/sounds/CU1.0.mp3'
 ),
  DataModel(
title: 'Eye',
image: 'assets/images/eyebutton.png',
audio:'assets/sounds/EY6.0.mp3'
 ),
  DataModel(
title: 'Seizure & Diabetic',
image: 'assets/images/seizurediabeticbutton.png',
audio:'assets/sounds/SE7.0.mp3'
 ),
  DataModel(
title: 'Heat & Cold Overexertion',
image: 'assets/images/heatcoldbutton.png',
audio:'assets/sounds/PH1.4.mp3'
 ),
  DataModel(
title: 'Other',
image: 'assets/images/otherbutton.png',
audio:'assets/sounds/BC2.1.6.mp3'
 ),
 ];


getdata(){
  return data;
}

List<CatogryModel> multipleinjuries =[
  CatogryModel(
    audio: 'assets/sounds/MI1.0.mp3',
    description: 'This button will help you assess a victim with multiple or unknown injuries and prioritize treatment.(Press NEXT to continue.)',
    video : '',
     yes1 : '',
   no1 : '',
  yes1Des: '',
   no1Des : '',
   yes2 : '',
  no2 : '',
  yes2Des : '',
  no2Des : '',
  yes3 : '',
  no3 : '',
  yes3Des : '',
   no3Des : '',   
  ),
  CatogryModel(
    audio: 'assets/sounds/MI1.1.mp3',
    description: 'First, check to be certain the scene is safe and visually assess the area for any clues about the emergency.(Press NEXT to continue.)',
    video : '',
    yes1 : '',
    no1 : '',
    yes1Des: '',
    no1Des : '',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  ),
  CatogryModel(
    audio: 'assets/sounds/G4.7.mp3',
    description: 'Grab available first aid supplies and put on protective items such as safety gloves. Identify yourself and ask the victim for permission to provide care. If permission is refused, DO NOT proceed. Call 911 or your designated emergency number.(Press NEXT to continue.)',
    video : '',
    yes1 : '',
    no1 : '',
    yes1Des: '',
    no1Des : '',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  ),
  CatogryModel(
    audio: 'assets/sounds/MI2.0.mp3',
    description: 'Do not move the victim unless absolutely necessary for safety reasons. If you must move someone with possible head/neck/spine injury, two rescuers can more safely do this. Support the head and neck in the position found, while carefully rolling the victim onto his back and gently pulling him by his clothing or upper chest.(Press NEXT to continue.)',
    video: 'assets/videos/12-a.mp4',
    yes1 : '',
    no1 : '',
    yes1Des: '',
    no1Des : '',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  ),

  CatogryModel(
    audio: 'assets/sounds/HN2.0.mp3',
    description: 'If victim is wearing a helmet, DO NOT remove it unless necessary to assess airway and you are trained to do so.(Press NEXT to continue.)',
    video : '',
    yes1 : '',
    no1 : '',
    yes1Des: '',
    no1Des : '',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  ),
  CatogryModel(
    audio: 'assets/sounds/G11.0.mp3',
    description: 'If the victim appears stable, press the Info button for a list of key questions to ask and document for hand off to EMTs when they arrive.  Gather whatever information you can from the victim, family members, or other bystanders until advanced care arrives.(Press NEXT to continue.)',
    video : '',
    yes1 : '',
    no1 : '',
    yes1Des: '',
    no1Des : '',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  ),
  CatogryModel(
    audio: 'assets/sounds/G6.0.mp3',
    description: 'Continually monitor the victim.  If at any time the victim loses consciousness or stops breathing, press the CPR button.  If the victim airway becomes obstructed or breathing constricted, press the Home icon and proceed with Breathing/Choking button. Forward past instructions already reviewed.(Press NEXT to continue.)',
    video : '',
    yes1 : '',
    no1 : '',
    yes1Des: '',
    no1Des : '',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  ),
  CatogryModel(
    audio: 'assets/sounds/BS9.0.mp3',
    description: 'As soon as possible after the victim is treated and stabilized clean up any blood or body fluids left in the area using safety gloves. If a Bloodborne Pathogens Cleanup Kit is available, follow the instructions for use. When finished, wash hands.(Press NEXT to continue.)',
    video: 'assets/videos/1-a.mp4',
    yes1 : '',
    no1 : '',
    yes1Des: '',
    no1Des : '',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  
  ),
  CatogryModel(
    audio: 'assets/sounds/MI9.0.mp3',
    description: 'Press the Back or Next buttons to repeat any instructions or press the Start Over button to begin these instructions again.(END.)',
    video : '',
    yes1 : '',
    no1 : '',
    yes1Des: '',
    no1Des : '',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  )
];
List<CatogryModel> headNeck =[
  CatogryModel(
    audio: 'assets/sounds/G1.0.mp3',
    description: 'Is the victim conscious and breathing?',
    yes1: 'assets/sounds/G3.4.7.mp3',
    yes1Des: 'If 911 has not been called, have someone call this or your designated emergency number. Grab available first aid supplies and put on protective items such as safety gloves.  Identify yourself and ask the victim for permission to provide care. If permission is refused, DO NOT proceed.(Press NEXT to continue.)',
    no1: 'assets/sounds/CU1.0.mp3',
    no1Des: '''Tap the victim's shoulder or shout 'Are you okay?' CPR should only be performed if the victim is unconscious OR not breathing. If this does not describe the victim, press the button that most closely fits the emergency.  ''',
    video : '',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  ),
  CatogryModel(
    audio: 'assets/sounds/HN1.0.mp3',
    description: 'Keep the victim as still as possible. Check the scene. Do not move the victim unless absolutely necessary for safety reasons. If you must move someone with possible head/neck/spine injury, two rescuers can more safely do this. Support the head/neck in the position found, while carefully rolling the victim onto his back and gently pulling him by his clothing or upper chest.(Press NEXT to continue.)',
    video: 'assets/videos/12-a.mp4',
    yes1 : '',
    no1 : '',
    yes1Des: '',
    no1Des : '',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  ),

  CatogryModel(
    audio: 'assets/sounds/BS9.0.mp3',
    description: 'As soon as possible after the victim is treated and stabilized clean up any blood or body fluids left in the area using safety gloves. If a Bloodborne Pathogens Cleanup Kit is available, follow the instructions for use. When finished, wash hands.(Press NEXT to continue.)',
    video: 'assets/videos/1-a.mp4',
    yes1 : '',
    no1 : '',
    yes1Des: '',
    no1Des : '',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  ),
  CatogryModel(
    audio: 'assets/sounds/HN5.0.mp3',
    description: 'Press the Back or Next buttons to repeat any instructions or press the Start Over button to begin these instructions again.(END)',
    yes1 : '',
    no1 : '',
    yes1Des: '',
    no1Des : '',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  ),
  
  
];
//yes 1 , 2 ,3 
List<CatogryModel> cpr =[
  CatogryModel(
    audio: 'assets/sounds/CU1.0.mp3',
    description: '''Tap the victim's shoulder or shout 'Are you okay?' CPR should only be performed if the victim is unconscious OR not breathing. If this does not describe the victim, press the button that most closely fits the emergency.(Press NEXT to continue and obtain more instructions for Adult, Child and Infant CPR.) ''',
    video: 'assets/videos/1-a.mp4',
    yes1 : '',
    no1 : '',
    yes1Des: '',
    no1Des : '',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  ),
  CatogryModel(
    audio: 'assets/sounds/C2-0.mp3',
    description: 'Is the victim age 8 or over?',

    yes1: 'assets/sounds/CU1.0.mp3',
    yes1Des: '''Tap the victim's shoulder or shout 'Are you okay?' CPR should only be performed if the victim is unconscious OR not breathing. If this does not describe the victim, press the button that most closely fits the emergency.  ''',
    no1: 'assets/sounds/BC8.2.mp3',
    no1Des: 'Is this a poison or suspected drug overdose emergency?',
    
    yes2: 'assets/sounds/BC8.2.mp3',
    yes2Des: 'Has the person collapsed?',
    no2: 'assets/sounds/BC2.1.6.mp3',
    no2Des: 'Place victim in the recovery position, lying on his side.\n(Press VIEW to see short video on how to roll victim to the recovery position.)\n(Press NEXT to continue.)',

    yes3: 'assets/sounds/BC2.1.6.mp3',
    yes3Des: 'Place victim in the recovery position, lying on his side.\n(Press VIEW to see short video on how to roll victim to the recovery position.)\n(Press NEXT to continue.)',
    no3: 'assets/sounds/BC8.2.mp3',
    no3Des: 'Is this a poison or suspected drug overdose emergency?',
    video : '',
   
  ),
  CatogryModel(
    audio: 'assets/sounds/BC2.1.7.mp3',
    description: 'Press the arrow keys to repeat any instructions or press the Start Over button to begin these instructions again.(END)',
    yes1 : '',
    no1 : '',
    yes1Des: '',
    no1Des : '',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  )
  
];
List<CatogryModel> brething =[
  
  CatogryModel(
    audio: 'assets/sounds/BC8.2.mp3',
    description: 'Is this a poison or suspected drug overdose emergency?',
    yes1: 'assets/sounds/BC8.2.mp3',
    yes1Des: 'Has the person collapsed?',
    no1: 'assets/sounds/BC2.1.6.mp3',
    no1Des: 'Place victim in the recovery position, lying on his side.(Press VIEW to see short video on how to roll victim to the recovery position.)\n(Press NEXT to continue.)',
    no2: 'assets/sounds/BC8.2.mp3',
    yes2: 'assets/sounds/BC2.1.6.mp3',
    yes2Des: 'Place victim in the recovery position, lying on his side.(Press VIEW to see short video on how to roll victim to the recovery position.)\n(Press NEXT to continue.)',
    video: 'assets/sounds/1-a.mp4',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  ),
  CatogryModel(
    audio: 'assets/sounds/BC2.1.7.mp3',
    description: 'Press the arrow keys to repeat any instructions or press the Start Over button to begin these instructions again.(END)',
    video : '',
    yes1 : '',
    no1 : '',
    yes1Des: '',
    no1Des : '',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  ),
];
List<CatogryModel> Heart =[
  CatogryModel(
    audio: 'assets/sounds/G1.0.mp3',
    description: 'Is the victim conscious and breathing?',
    yes1: 'assets/sounds/G3.4.7.mp3',
    yes1Des: 'If 911 has not been called, have someone call this or your designated emergency number. Grab available first aid supplies and put on protective items such as safety gloves.  Identify yourself and ask the victim for permission to provide care. If permission is refused, DO NOT proceed.\n(Press NEXT to continue.)',
    no1: 'assets/sounds/CU1.0.mp3',
    no1Des: '''Tap the victim's shoulder or shout 'Are you okay?' CPR should only be performed if the victim is unconscious OR not breathing. If this does not describe the victim, press the button that most closely fits the emergency.  ''',
    video: 'assets/sounds/1-a.mp4',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  ),
  CatogryModel(
    audio: 'assets/sounds/HC1.5.mp3',
    description: 'Press the Back or Next buttons to repeat any instructions as necessary or press the Start Over button to begin these instructions again.(END)',    yes1 : '',
    no1 : '',
    yes1Des: '',
    no1Des : '',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  )
];
List<CatogryModel> bleeding =[
  CatogryModel(
    audio: 'assets/sounds/G1.0.mp3',
    description: 'Is the victim conscious and breathing?',
    yes1: 'assets/sounds/BS1.0.mp3',

    yes1Des: 'Is the victim bleeding?',
    no1: 'assets/sounds/CU1.0.mp3',
    no1Des: '''Tap the victim's shoulder or shout 'Are you okay?' CPR should only be performed if the victim is unconscious OR not breathing. If this does not describe the victim, press the button that most closely fits the emergency.\n(Press NEXT to continue.)''',
    yes2: 'assets/sounds/BS10.6.mp3',
    yes2Des: 'Press the arrow keys to repeat any instructions or press the Start Over button to begin these instructions again.(END)',
    no2: 'assets/sounds/BS10.6.mp3',
    no2Des: 'Press the arrow keys to repeat any instructions or press the Start Over button to begin these instructions again.(END)',
    video: 'assets/sounds/1-a.mp4',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  )
];
List<CatogryModel> burn =[
  CatogryModel(
    audio: 'assets/sounds/G1.0.mp3',
    description: 'Is the victim conscious and breathing?',
    yes1: 'assets/sounds/BU3.5.mp3',
    yes1Des: 'Press Back or Next buttons to repeat any instructions or press the Start Over button to begin these instructions again.(END)',
    no1: 'assets/sounds/CU1.0.mp3',
    no1Des: '''Tap the victim's shoulder or shout 'Are you okay?' CPR should only be performed if the victim is unconscious OR not breathing. If this does not describe the victim, press the button that most closely fits the emergency. \n(Press NEXT to continue.)''',
    video: 'assets/sounds/1-a.mp4',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  )
];
List<CatogryModel> fracture =[
  CatogryModel(
    audio: 'assets/sounds/G1.0.mp3',
    description: 'Is the victim conscious and breathing?',
    yes1: 'assets/sounds/BO5.3.mp3',
    yes1Des: 'Press Back or Next buttons to repeat any instructions or press the Start Over button to begin these instructions again.(END)',
    no1: 'assets/sounds/CU1.0.mp3',
    no1Des: '''Tap the victim's shoulder or shout 'Are you okay?' CPR should only be performed if the victim is unconscious OR not breathing. If this does not describe the victim, press the button that most closely fits the emergency. \n(Press NEXT to continue.)''',
    video: 'assets/sounds/1-a.mp4',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  )
];
List<CatogryModel> eye =[
  CatogryModel(
    audio: 'assets/sounds/G1.0.mp3',
    description: 'Is the victim conscious and breathing?',
    yes1: 'assets/sounds/EY6.0.mp3',
    yes1Des: 'Press Back or Next buttons to repeat any instructions or press the Start Over button to begin these instructions again.()END',
    no1: 'assets/sounds/CU1.0.mp3',
    no1Des: '''Tap the victim's shoulder or shout 'Are you okay?' CPR should only be performed if the victim is unconscious OR not breathing. If this does not describe the victim, press the button that most closely fits the emergency.\n(Press NEXT to continue.)''',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  )
];
List<CatogryModel> seizure =[
  CatogryModel(
    audio: 'assets/sounds/SE7.0.mp3',
    description: 'Press Back or Next buttons to repeat any instructions or press the Start Over button to begin these instructions again.(END)',
    video : '',
    yes1 : '',
    no1 : '',
    yes1Des: '',
    no1Des : '',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  )
];
List<CatogryModel> heat =[
  CatogryModel(
    audio: 'assets/sounds/G1.0.mp3',
    description: 'Is the victim conscious and breathing?',
    yes1: 'assets/sounds/HO11.1.3.mp3',
    yes1Des: 'Keep victim comfortable and seek appropriate medical care. Press the Back or Next buttons to repeat any instructions or press the Start Over button to begin these instructions again.(END)',
    no1: 'assets/sounds/CU1.0.mp3',
    no1Des: '''Tap the victim's shoulder or shout 'Are you okay?' CPR should only be performed if the victim is unconscious OR not breathing. If this does not describe the victim, press the button that most closely fits the emergency.\n(Press NEXT to continue.)''',
    video: 'assets/sounds/1-a.mp4',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  )
];
List<CatogryModel> other =[
  CatogryModel(
    audio: 'assets/sounds/G1.0.mp3',
    description: 'Is the victim conscious and breathing?',
    yes1: 'assets/sounds/PH4.0.mp3',
    yes1Des: 'Press the Back or Next buttons to repeat any instructions or press the Start Over button to begin these instructions again.(END)',
    no1: 'assets/sounds/CU1.0.mp3',
    no1Des: '''Tap the victim's shoulder or shout 'Are you okay?' CPR should only be performed if the victim is unconscious OR not breathing. If this does not describe the victim, press the button that most closely fits the emergency.\n(Press NEXT to continue.)''',
    video: 'assets/sounds/1-a.mp4',
    yes2 : '',
    no2 : '',
    yes2Des : '',
    no2Des : '',
    yes3 : '',
    no3 : '',
    yes3Des : '',
    no3Des : '',
  )
];


}