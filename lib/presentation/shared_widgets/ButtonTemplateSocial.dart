import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:getwidget/types/gf_button_type.dart';

class ButtonTempSocial extends StatelessWidget {
  final String text;
  final IconData? IconName;
  final Function() onPress;
  final Color IconColor;
  final Color FillColor;

  const ButtonTempSocial({
    required this.text,
    required this.IconName,
    required this.onPress,
    required this.IconColor,
    required this.FillColor,
  });

  @override
  Widget build(BuildContext context) {
    return GFButton(
      hoverElevation: 2.0,
      highlightElevation: 2.0,
      elevation: 5.0,
      size: GFSize.LARGE,
      type: GFButtonType.solid,
      onPressed: onPress,
      text: text,
      textColor: Colors.black,
      icon: FaIcon(
        IconName,
        color: IconColor,
      ),
      shape: GFButtonShape.pills,
      color: FillColor,
    );
    /*FlatButton(
        onPressed: onPress,
        shape: RoundedRectangleBorder(
          borderRadius : BorderRadius.circular(100.0),
        ),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            FaIcon(IconName,color:IconColor ,),
            SizedBox(
              width: 10,
            ),
            TextTemp(
              text: text,
            ),
          ],
        ),

    );*/
  }
}
