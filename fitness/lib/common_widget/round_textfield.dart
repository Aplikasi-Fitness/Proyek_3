import 'package:fitness/common/colo_extension.dart';
import 'package:flutter/material.dart';

class RoundTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String hitText;
  final String icon;
  const RoundTextfield({super.key, required this.hitText, required this.icon, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              );
  }
}