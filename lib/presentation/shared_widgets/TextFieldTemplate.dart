import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TextTemplate.dart';

class TextfieldTemp extends StatelessWidget {
  final String TextHead;
  final String TextHint;
  final user;

  TextfieldTemp(
    this.TextHead,
    this.TextHint,
    this.user,
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: TextTemp(
            text: TextHead + " :",
            fontSize: 14,
            color: Colors.grey.shade800,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: TextFormField(
            controller: user,
            onSaved: (val) {
              print('saved');
            },
            validator: (val) {
              print('validating');
            },
            decoration: InputDecoration(
              hintText: TextHint,
              hintStyle: TextStyle(color: Colors.grey),
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue.shade100,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 3.0),
                borderRadius: BorderRadius.circular(12.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue.shade100, width: 2.0),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(width: 3.0, color: Colors.red.shade200),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
