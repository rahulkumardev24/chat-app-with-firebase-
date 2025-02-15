
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../../domain/app_utils.dart';
import '../../../widgets/custom_text_field.dart';
import '../register_screen/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conformPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 270,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.PrimaryColor,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(130))),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 50,
                    right: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/image/login.png",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Welcome Back",
                          style: myTextStyle30(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// here we call custom text field  and -->  send value with constructor
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          Text(
                            "Remember Me",
                            style: myTextStyle18(),
                          )
                        ],
                      ),
                      Text(
                        "Forget Password?",
                        style: myTextStyle18(fontColor: Colors.red),
                      )
                    ],
                  )
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
                            onTap: () async {


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
                                      "Login",
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
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                              "Don't have an account? ",
                              style: myTextStyle20(fontColor: Colors.black54),
                            ),
                            OutlinedButton(
                                onPressed: () {
                                  /// here we navigate into signup screen
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SignupScreen()));
                                },
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    side: BorderSide(
                                        width: 2, color: Colors.white)),
                                child: Text(
                                  "Sign up",
                                  style:
                                      myTextStyle18(fontColor: Colors.black87),
                                ))
                          ],
                        ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
