import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: LoginPage(),
));

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
            Positioned(
            top: 40.0,
            left: -70.0,
            child: Image.asset(
              "assets/spaceicon.png",
              width: size.width * 0.65,
            ),
          ),
          Positioned(
            top: 150,
            left: 60,
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 0.0),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Club',
                      style: TextStyle(
                        fontSize: 44.0,
                        color: Colors.white,
                      ),
                    ),
                    WidgetSpan(
                      child: SizedBox(
                        width: 16.0,
                      ),
                    ),
                    TextSpan(
                        text: 'Space',
                        style: TextStyle(
                          fontSize: 44.0,
                          color: Colors.blueAccent,
                        ))
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -140,
            right: -160.0,
            child: Image.asset(
              "assets/spaceicon.png",
            ),
          ),
          Positioned(
            top: 220,
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Form(
                child: Column(
                  children: [
                  TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'Enter username',
                    suffixIcon: const Icon(Icons.account_circle),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
                        color: Colors.blueAccent,
                        width: 1.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
                        color: Colors.blueAccent,
                        width: 1.0,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter password',
                    suffixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
                        color: Colors.blueAccent,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
                        color: Colors.blueAccent,
                        width: 2.0,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 50,

                    child: Center(
                            child: Text(
                              'Log in',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,

                              ),
                            ),
                          ),
                        ),

                      ),

                     SizedBox(height: 10.0),
                     GestureDetector(

                          onTap: () {
                           print('Text tapped!');
                          },
                          child: Text(
                            'Not a member ? Create a profile',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                        ),


                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
