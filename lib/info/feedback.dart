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

  final _recipientController = TextEditingController(
    text: 'shahab.sk708@gmail.com',
  );

  final _subjectController = TextEditingController(text: 'The subject');

  final _bodyController = TextEditingController(
    text: 'Mail body.',
  );

  final _firstNameController = TextEditingController(
    text: 'Mail body.',
  );

  final _lastNameController = TextEditingController(
    text: 'Mail body.',
  );

  final _phoneNoController = TextEditingController(
    text: 'Mail body.',
  );
  Future<void> send() async {
    final Email email = Email(
      body: _bodyController.text.trim(),
      subject: _subjectController.text.trim(),
      recipients: [_recipientController.text.trim()],
      isHTML: false
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {
      print(error);
      platformResponse = error.toString();
    }

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(platformResponse),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plugin example app'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
             sendEmail(name: "shahab", email: _recipientController.text.trim(), subject: _subjectController.text.trim(), message: _bodyController.text.trim());
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
                controller: _recipientController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Recipient',
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
      'to_email': "shahab.sk708@gmail.com",
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