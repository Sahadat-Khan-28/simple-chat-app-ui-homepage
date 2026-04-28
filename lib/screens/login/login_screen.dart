import 'package:flutter/material.dart';
import 'package:list_view/screens/home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool obscureText = false;
  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(206, 173, 101, 245),
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              left: -150,
              child: Container(
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 219, 178, 253),
                      const Color.fromARGB(200, 220, 149, 252),
                      const Color.fromARGB(199, 180, 90, 240),
                      const Color.fromARGB(198, 172, 67, 241),
                    ],
                    begin: AlignmentGeometry.topLeft,
                    end: AlignmentGeometry.topRight,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -150,
              right: -150,
              child: Container(
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 219, 178, 253),
                      const Color.fromARGB(200, 220, 149, 252),
                      const Color.fromARGB(199, 180, 90, 240),
                      const Color.fromARGB(198, 172, 67, 241),
                    ],
                    begin: AlignmentGeometry.topLeft,
                    end: AlignmentGeometry.topRight,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 100,
                ),
                child: Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: Form(
                      key: key,
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("assets/login.png"),
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          Spacer(flex: 2),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter you email";
                              }
                              if (!value.contains("@") &&
                                  !value.contains(".com")) {
                                return "Invalid email";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            controller: email,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              errorStyle: TextStyle(color: Colors.amber),
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.white70,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  email.clear();
                                },
                                icon: Icon(Icons.close, color: Colors.white70),
                              ),
                              labelStyle: TextStyle(color: Colors.white),
                              hintStyle: TextStyle(color: Colors.white),
                              labelText: "E-mail",
                              hintText: "Enter your e-mail",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.white38,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          ),

                          Spacer(),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your password";
                              }
                              if (value.length < 8) {
                                return "Password must be have 8 characters!";
                              }
                              return null;
                            },
                            obscureText: !obscureText,
                            controller: password,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              errorStyle: TextStyle(color: Colors.amber),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.white70,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    obscureText = !obscureText;
                                  });
                                },
                                icon: Icon(
                                  obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.white70,
                                ),
                              ),
                              labelStyle: TextStyle(color: Colors.white),
                              hintStyle: TextStyle(color: Colors.white),
                              labelText: "Password",
                              hintText: "Enter your password",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.white38,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                          ),
                          Spacer(flex: 2),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (key.currentState!.validate()) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HomeScreen(),
                                        ),
                                      );
                                    }
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.deepPurple,
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  "Login",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          Spacer(flex: 4),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
