import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../../domain/app_utils.dart';
import '../../../widgets/custom_text_field.dart';
import '../login_screen/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conformPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 270,
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.PrimaryColor,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(130))),
            child: Stack(
              children: [
                Positioned(
                  top: 50,
                  right: 10,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/image/signup.png",
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        "Create your account",
                        style: myTextStyle30(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                /// here we call custom text field  and -->  send value with constructor
                /// name box
                CustomTextField(
                  textEditingController: nameController,
                  hintText: "Enter username here ",
                  labelText: "Username",
                  suffixIcon: Icons.person,
                  filledColor: AppColors.field1,
                ),

                const SizedBox(
                  height: 10,
                ),

                /// email box
                CustomTextField(
                  textEditingController: emailController,
                  hintText: "Enter email here ",
                  labelText: "Email",
                  suffixIcon: Icons.email_outlined,
                  filledColor: AppColors.field2,
                ),

                const SizedBox(
                  height: 10,
                ),

                /// password box
                CustomTextField(
                  textEditingController: passwordController,
                  hintText: "Enter password here ",
                  labelText: "Password",
                  suffixIcon: Icons.lock,
                  prefixIcon: Icons.remove_red_eye,
                  filledColor: AppColors.field3,
                ),

                const SizedBox(
                  height: 10,
                ),

                /// conform password box
                CustomTextField(
                  textEditingController: conformPasswordController,
                  hintText: "Enter confirm password here ",
                  labelText: "Confirm password",
                  suffixIcon: Icons.lock,
                  prefixIcon: Icons.remove_red_eye,
                  filledColor: AppColors.field4,
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius:
                    const BorderRadius.only(topRight: Radius.circular(130)),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 40,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () async{

                          },
                          child: Row(
                            children: [
                              Container(
                                width: 200,
                                height: 50,
                                decoration:
                                    BoxDecoration(color: AppColors.field1),
                                child: Center(
                                  child: Text(
                                    "Sign up",
                                    style: myTextStyle25(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: AppColors.secondaryColor,
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10))),
                                child: const Center(
                                  child: Icon(Icons.arrow_forward_ios),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "assets/icon/google.png",
                                      height: 30,
                                      width: 30,
                                    ),
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "assets/icon/facebook.png",
                                      height: 30,
                                      width: 30,
                                    ),
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "assets/icon/instagram.png",
                                      height: 30,
                                      width: 30,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      right: 12,
                      bottom: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Do you have an account? ",
                            style: myTextStyle20(fontColor: Colors.black54),
                          ),
                          OutlinedButton(
                              onPressed: () {
                                /// here we navigate into login screen
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  side: BorderSide(
                                      width: 2, color: Colors.white)),
                              child: Text(
                                "Login",
                                style: myTextStyle18(fontColor: Colors.black87),
                              ))
                        ],
                      ))
                ],
              ))
        ],
      ),
    );
  }
}

/// IN THIS VIDEO --> HOW TO UPLOAD FLUTTER PROJECT ON GITHUB