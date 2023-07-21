import 'package:flutter/material.dart';
import 'package:logindemoreskill/feature/LoginPage/view/login_page2.dart';
import 'package:logindemoreskill/feature/LoginPage/widget/myElavatedButton.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor:
                    Colors.amber.shade100, // Change the background color here
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(18.0), // Set the border radius here
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Skip',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        color: Colors.white,
        child: Column(
          //main column
          children: [
            const SizedBox(
              height: 40,
            ),
            Column(
              // image column
              children: [
                Center(
                  child: FractionallySizedBox(
                    widthFactor:
                        0.55, // Set the width factor to 40% of the screen width
                    alignment:
                        Alignment.center, // Center the child horizontally
                    child: ClipOval(
                      child: Container(
                          padding: const EdgeInsets.all(15),
                          color: Colors.blue.shade50,
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
            MyElevatedButton(
              text: 'Continue with email',
              color: 0xFF4DAE5F,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginView2(),
                  ),
                );
              },
              textColor: 0xFFFFFFFFF,
              logo: 'assets/images/email.png',
            ),
            MyElevatedButton(
              text: 'Continue with Apple',
              color: 0xFF000000,
              onPressed: () {},
              textColor: 0xFFFFFFFFF,
              logo: 'assets/images/logoa.png',
            ),
            MyElevatedButton(
              text: 'Continue with Google',
              color: 0xFF5384ED,
              onPressed: () {},
              textColor: 0xFFFFFFFFF,
              logo: 'assets/images/logog.png',
            ),
            MyElevatedButton(
              text: 'Continue with Facebook',
              color: 0xFF425892,
              onPressed: () {},
              textColor: 0xFFFFFFFFF,
              logo: 'assets/images/logofacebook.png',
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
            const Spacer(),
            const Expanded(
                child: Text(
              'By clicking "Continue with Email/Apple/Google/Facebook" above, you agree to 7krave' +
                  "'s Terms & Conditions and Privacy Policy",
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ))
          ],
        ),
      ),
    );
  }
}
