import 'package:flutter/material.dart';

class TextTemp extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final Alignment alignment;
  final String fontFamily;

// no3 2lvariables final .. types .. 2sm 2lvariables
  TextTemp(
      {this.text = '',
      this.fontSize = 16,
      this.color = Colors.black,
      this.fontWeight = FontWeight.bold,
      this.alignment = Alignment.topLeft,
      this.fontFamily = 'SourceSansPro'});

// w de 2l inital variables bta3et 2lconstructor
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: fontFamily),
      ),
      // hna lama 2lobject ytnada bl values 2lly 2t3addelet 2l 7atta law initial values httro7 3lwidget 2lly
      // feha 2lcontaainer 3l4an tenafez 2lkalam dah
      // b3dha traga3 2l output  ll makan 2lly 2t3amalha feh call
      // wlaw 2sta3enah lwa7do hayegy fnos 2lsaf7a 3la4an howa container        (^_^)

      //3l4an kda hane3melo alignment
      alignment: alignment,
    );
  }
}
