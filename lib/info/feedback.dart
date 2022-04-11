import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class FeedbackSender extends StatefulWidget {
  
  @override
  _FeedbackSenderState createState() => _FeedbackSenderState();
}

class _FeedbackSenderState extends State<FeedbackSender> {
  List<String> attachments = [];
  bool isHTML = false;

  final _recipientController = TextEditingController();

  final _subjectController = TextEditingController();

  final _bodyController = TextEditingController();

  final _firstNameController = TextEditingController();

  final _lastNameController = TextEditingController();

  final _phoneNoController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text('Feedback'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
             sendEmail(name: _firstNameController.text.trim()+ " " + _lastNameController.text.trim(), email: _recipientController.text.trim(), subject: _subjectController.text.trim(), message: _bodyController.text.trim(), phone_no: _phoneNoController.text.trim());
            },
            icon: Icon(Icons.send),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: _firstNameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Name',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: _lastNameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Last Name',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: _phoneNoController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone no',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: _recipientController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Email',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: _subjectController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Subject',
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: _bodyController,
                  maxLines: null,
                  expands: true,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                      labelText: 'Body', border: OutlineInputBorder()),
                ),
              ),
            ),
            
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  for (var i = 0; i < attachments.length; i++)
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            attachments[i],
                            softWrap: false,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.remove_circle),
                          onPressed: () => {_removeAttachment(i)},
                        )
                      ],
                    ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(Icons.attach_file),
                      onPressed: _openImagePicker,
                    ),
                  ),
                  
                ],
              ),
            ),
      
          ],
        ),
      ),
    );
  }

  void _openImagePicker() async {
    final picker = ImagePicker();
    PickedFile? pick = await picker.getImage(source: ImageSource.gallery);
    if (pick != null) {
      setState(() {
        attachments.add(pick.path);
      });
    }
  }

  void _removeAttachment(int index) {
    setState(() {
      attachments.removeAt(index);
    });
  }


Future sendEmail({
  required String name,
  required String email,
  required String subject,
  required String message,
  required String phone_no
}) async {

final serviceId = 'service_sk2iqh9';
final templateId = 'template_kxgdhpg';
final userId = 'u0tSjzn86rjWlogpH';

  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  print('ok');
  final response = await http.post(url,
  headers: {
    'origin': 'http://localhost', 
    'Content-Type': 'application/json',
  },
  body: json.encode({
    'service_id': serviceId,
    'template_id': templateId,
    'user_id': userId,
    'template_params': {
      'from_name': name,
      'from_email': email,
      'to_email': "support@think-safe.com",
      'user_subject': subject,
      'message': message,
      'phone_no': phone_no,
    }
  })
  );

  print(response.body);
  print('ok2');
}

}