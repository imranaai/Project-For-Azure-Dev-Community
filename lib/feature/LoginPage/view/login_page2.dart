import 'package:flutter/material.dart';

class LoginView2 extends StatefulWidget {
  const LoginView2({super.key});

  @override
  State<LoginView2> createState() => _LoginView2State();
}

class _LoginView2State extends State<LoginView2> {
  String _inputText = '';
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.green;
      }
      return Colors.black;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Set your custom color for the app bar here
        leading: ClipOval(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor:
                    const Color(0xFFDAEFEE), // Change the background color here
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_sharp,
                color: Colors.black,
              )),
        ),
        title: const Text(
          'Sign In',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 0),
        color: Colors.white,
        child: Column(
          children: [
            Spacer(),
            Column(
              // image column
              children: [
                Center(
                  child: FractionallySizedBox(
                    widthFactor:
                        0.35, // Set the width factor to 35% of the screen width
                    alignment:
                        Alignment.center, // Center the child horizontally
                    child: ClipOval(
                      child: Container(
                          padding: const EdgeInsets.all(15),
                          color: const Color(0xFFFDF8F2),
                          child: const Image(
                              image:
                                  AssetImage('assets/images/kravelogo.png'))),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFF6FCFC),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 0.2,
                    offset: const Offset(
                        0.5, 0.5), // changes the position of the shadow
                  ),
                ],
              ),
              child: TextField(
                onChanged: (text) {
                  setState(() {
                    _inputText = text;
                  });
                },
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Text('Input: $_inputText'),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFF6FCFC),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 0.2,
                    offset: const Offset(
                        0.5, 0.5), // changes the position of the shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 200,
                    child: TextField(
                      onChanged: (text) {
                        setState(() {
                          _inputText = text;
                        });
                      },
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const Icon(Icons.remove_red_eye_outlined)
                ],
              ),
            ),
            // const SizedBox(
            //   height: 24,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Text(
                      "Remember Me",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Text(
                  "Forgot Password?",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 0),
              width: double.infinity,
              child: ElevatedButton(
                //button 1
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: const Color(
                      0xFF4DAE5F), // Change the background color here
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8.0), // Set the border radius here
                  ),
                ),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text('Sign Up',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF4DAE5F)))
                ],
              ),
            ),
            Spacer(),
            const Text(
              'By clicking "Sign In" above, you agree to 7krave' +
                  "'s Terms & Conditions and Privacy Policy",
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),

            // const SizedBox(
            //   height: 20,
            // )
          ],
        ),
      ),
    );
  }
}
