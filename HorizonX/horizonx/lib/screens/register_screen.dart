import 'dart:ui'; // Required for BackdropFilter
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:horizonx/screens/login_screen.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import'cities_view.dart';
import '../constants.dart';
import 'home_screen.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String? name, email, password;

  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("${imageAsset}background.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  color: Colors.black.withOpacity(0.2),
                ),
              ),
            ),

            // Login Form Layer
            SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.25),
                    const Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: ConstColors.primaryGoldColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            validator: (data) {
                              if (data!.isEmpty) {
                                return 'field is required';
                              }
                            },
                            onChanged: (data) {
                              name = data;
                            },
                            decoration: const InputDecoration(
                              labelText: "Name",
                              border: InputBorder.none,
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            validator: (data) {
                              if (data!.isEmpty) {
                                return 'field is required';
                              }
                            },
                            onChanged: (data) {
                              email = data;
                            },
                            decoration: const InputDecoration(
                              labelText: "Email",
                              border: InputBorder.none,
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            validator: (data) {
                              if (data!.isEmpty) {
                                return 'field is required';
                              }
                            },
                            onChanged: (data) {
                              password = data;
                            },
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: "Password",
                              border: InputBorder.none,
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              isLoading = true;
                              setState(() {

                              });
                              try {
                                await FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                  email: email!,
                                  password: password!,
                                );
                                showSnackBar(context, "Registered successfully");
                                await Future.delayed(const Duration(seconds: 2));

                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => cities_view(),
                                  ),
                                );
                              } on FirebaseAuthException catch (e) {
                                String message = '';

                                if (e.code == 'weak-password') {
                                  message = 'The password provided is too weak.';
                                } else if (e.code == 'email-already-in-use') {
                                  message =
                                      'The account already exists for that email.';
                                } else if (e.code == 'invalid-email') {
                                  message =
                                      'The email address is badly formatted.';
                                } else if (e.code == 'operation-not-allowed') {
                                  message =
                                      'Email/password accounts are not enabled.';
                                } else {
                                  message = 'Error: ${e.message}';
                                }
                                showSnackBar(context, message);
                              }
                              isLoading = false;
                              setState(() {

                              });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: ConstColors.primaryBlueColor,
                          ),
                          child: const Text(
                            "Register",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 100), // Adjusted spacing
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account?",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              color: ConstColors.primaryGoldColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

   void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(
              Icons.error_outline,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16),
              ),
            ),
          ],
        ),
        backgroundColor: ConstColors.primaryGoldColor,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        duration: const Duration(seconds: 4),
        action: SnackBarAction(
          label: 'DISMISS',
          textColor: Colors.white,
          onPressed: () {
          },
        ),
      ),
    );
  }
}
