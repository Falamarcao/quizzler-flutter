import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/material.dart';

// Alert with multiple and custom buttons
class QuizAlert {
  void onAlertButtonsPressed(context, {String title, String desc}) {
    Alert(
      context: context,
      style: AlertStyle(
        isOverlayTapDismiss: false,
      ),
      type: AlertType.warning,
      title: title,
      desc: desc,
      buttons: [
        DialogButton(
          child: Text(
            "RESTART",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(116, 116, 191, 1.0),
            Color.fromRGBO(52, 138, 199, 1.0)
          ]),
        )
      ],
    ).show();
  }
}
