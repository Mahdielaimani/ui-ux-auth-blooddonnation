import 'package:blooddonation/controller/signupcontroller.dart';
import 'package:blooddonation/core/constant/color.dart';
import 'package:blooddonation/core/constant/routes.dart';
import 'package:blooddonation/view/widget/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/static/static.dart';
import '../../widget/custombottonauth.dart';
import '../../widget/customformauth.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  SignUpControllerIm controller = Get.put(SignUpControllerIm());
  SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: AppColor.textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: false,
          itemCount: loginLists.length,
          itemBuilder: ((context, index) => Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 100),
                      child: Text(signUpLists[index].text!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ))),
                  Container(
                      child: Text(signUpLists[index].body!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            height: 2,
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ))),
                  CustomFormAuth(
                    obscuretext: false,
                    hinttext: 'enter your email',
                    labeltext: 'Username',
                    icondata: Icons.person,
                    mycontroller: controller.username,
                  ),
                  CustomFormAuth(
                    obscuretext: false,
                    hinttext: 'enter your email',
                    labeltext: 'Email',
                    icondata: Icons.email,
                    mycontroller: controller.email,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  CustomFormAuth(
                    obscuretext: false,
                    hinttext: 'enter your phone',
                    labeltext: 'Phone',
                    icondata: Icons.phone,
                    mycontroller: controller.phone,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  CustomFormAuth(
                    obscuretext: true,
                    hinttext: 'enter your password',
                    labeltext: '  Password',
                    icondata: Icons.lock,
                    mycontroller: controller.password,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomBottonAuth(
                    onTap: () {
                      controller.gotToCheckEmail();
                    },
                    textbutton: 'Sign Up',
                  ),
                  TextSignUp(
                    textone: 'Have an account ',
                    texttwo: 'Sign In',
                    onTap: () {
                      Get.toNamed(RoutesName.login);
                    },
                  ),
                ],
              ))),
    );
  }
}
