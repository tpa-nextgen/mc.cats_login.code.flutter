import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: CatsLogin()));
}

class CatsLogin extends StatelessWidget {
  const CatsLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff120128),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Image(
              image: AssetImage('images/Catfly_logo.png'),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10),
              color: Color(0xff0035A5),
              child: ListTile(
                leading: Image(
                  image: AssetImage('images/fb_icon.png'),
                ),
                title: Text(
                  'Continue with Facebook',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10),
              color: Color(0xff2084FA),
              child: ListTile(
                leading: Image(
                  image: AssetImage('images/google_icon.png'),
                ),
                title: Text(
                  'Continue with Google',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10),
              color: Colors.white,
              child: ListTile(
                leading: Image(
                  image: AssetImage('images/apple_icon.png'),
                ),
                title: Text(
                  'Continue with Apple',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 46,
            )
          ],
        ),
      ),
    );
  }
}
