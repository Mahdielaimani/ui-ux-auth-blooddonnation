import 'package:flutter/material.dart';
import '../../core/constant/color.dart';

class TextSignUp extends StatelessWidget {
  final String textone;
  final String texttwo;
  final void Function() onTap;
  const TextSignUp(
      {Key? key,
      required this.textone,
      required this.texttwo,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textone),
        InkWell(
          onTap: onTap,
          child: Text(
            texttwo,
            style: TextStyle(color: AppColor.buttonColor),
          ),
        )
      ],
    );
  }
}
