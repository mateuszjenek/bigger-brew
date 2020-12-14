import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class SyncFailedDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AssetGiffyDialog(
      image: Image.asset('assets/fail.gif'),
      title: Text(
        'Something Failed',
        style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
      ),
      description: Text(
        'All locally saved operations could not be performed. Check the current status.',
        textAlign: TextAlign.center,
      ),
      onlyOkButton: true,
      buttonOkColor: Theme.of(context).primaryColor,
      buttonOkText: Text(
        "I got it",
        style: TextStyle(color: Colors.white),
      ),
      onOkButtonPressed: () => Navigator.pop(context),
    );
  }
}
