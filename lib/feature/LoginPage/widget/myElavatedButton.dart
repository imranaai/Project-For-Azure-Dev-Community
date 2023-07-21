import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final String text;
  final int color;
  final VoidCallback onPressed;
  final int textColor;
  final String logo;

  const MyElevatedButton(
      {super.key,
      required this.text,
      required this.color,
      required this.onPressed,
      required this.textColor,
      required this.logo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      width: double.infinity,
      child: ElevatedButton(
        //button 1
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Color(color), // Change the background color here
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(8.0), // Set the border radius here
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageIcon(
                AssetImage(logo),
                size: 18,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                text,
                style: TextStyle(
                    color: Color(textColor),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
