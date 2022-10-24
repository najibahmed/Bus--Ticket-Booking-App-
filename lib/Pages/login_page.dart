import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  static const String routeName ='loginPage';
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
              children:
              [
                Image.asset('assets/Bus.jpeg',fit:BoxFit.cover,),
                Positioned(
                  top: 25,
                  child: Text('Welcome',
                    style: TextStyle(
                      wordSpacing: 5,
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                    ),
                    // textAlign: TextAlign.center,
                  ),
                ),
              ]
          ),
          SizedBox(height: 10),
          Text(
            "Log in to your existant account ",
            style: TextStyle(
              fontSize: 12,
              color: Colors.black.withOpacity(.70),
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            height: 58,
            width: 450,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.grey,
                ),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    // color: Colors.blue,
                  ),
                  hintText: "Email",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            height: 58,
            width: 450,
            child: Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.grey,
                ),
                obscureText: true,
                obscuringCharacter: "*",
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock
                    // color: Colors.blue,
                  ),
                  hintText: "Password",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 48,
            width: 260,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "LOG IN",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    letterSpacing: 2),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue[900],
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(.65),
                  letterSpacing: 1,
                ),
              ),
              TextButton(
                onPressed: () {

                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.blue[700],
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}