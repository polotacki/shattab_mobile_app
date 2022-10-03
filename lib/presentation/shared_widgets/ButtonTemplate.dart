import 'package:flutter/material.dart';

import 'TextTemplate.dart';
import 'const.dart';

class ButtonTemp extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  final Function() onPress;

  ButtonTemp(this.onPress,
      {this.text = "",
      this.textColor = Colors.white,
      this.buttonColor = PrymaryColor4});

// hna bne3mel assign ll onpress m4 bn3mel call / lw call 2lmafrood kant onpress()
  /* The () causes the function to execute the code inside it's definition. Without the (),
 you are simply referring to the function itself--which is quite useful. You can store functions in variables and pass them around.
  */

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        )),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10.0)),
      ),
      child: TextTemp(
        alignment: Alignment.center,
        text: text,
        fontSize: 18,
        color: textColor,
      ),
      /*shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.all(20),

      color: color,
      onPressed: onPress,
      child: TextTemp(
        alignment: Alignment.center,
        text: text,
        fontSize: 14,
        color: Colors.white,
      ),*/
    );
  }
}
