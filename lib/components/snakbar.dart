import 'package:flutter/material.dart';

class Snackbar {
  void showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: Colors.blue, // You can set a background color
      duration:
          const Duration(seconds: 3), // Duration for the snackbar to be visible
      action: SnackBarAction(
        label: 'Undo', // Optional action (e.g., Undo)
        textColor: Colors.white,
        onPressed: () {
          // Code to run when undo is pressed
          print('Undo clicked');
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
