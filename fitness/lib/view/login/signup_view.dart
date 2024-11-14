import 'package:fitness/common/colo_extension.dart';
import 'package:flutter/material.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hey there,",
                style: TextStyle(color: TColor.gray, fontSize: 16),
              ),
              Text(
                "Create an Account",
                style: TextStyle(
                    color: TColor.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: media.width * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    color: TColor.LightGray,
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "First Name",
                      prefixIcon: Container(
                        alignment: Alignment.center,
                        width: 15, height: 15,
                          child: Image.asset(
                        "assets/img/user_text.png",
                        width: 15,
                        height: 15,
                        fit: BoxFit.contain,
                        color: TColor.gray,
                      )),
                      hintStyle: TextStyle(color: TColor.gray, fontSize: 12)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
