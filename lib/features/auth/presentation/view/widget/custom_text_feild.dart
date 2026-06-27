import 'package:flutter/material.dart';
import 'package:phone_zone/core/utils/color_manager.dart';
import 'package:phone_zone/core/utils/font_family_manager.dart';
import 'package:phone_zone/core/utils/raduis_manager.dart';
import 'package:phone_zone/core/utils/width_manager.dart';

class CustomTextFeild extends StatefulWidget {
  const CustomTextFeild({
    super.key,
    required this.hintText,
    required this.iconData,
    this.obscureText = false,
    this.validator,
    this.controller,
    this.keyboardType,
    required this.prefixIcon,
  });
  final String hintText;
  final IconData iconData;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final IconData prefixIcon;

  @override
  State<CustomTextFeild> createState() => _CustomTextFeildState();
}

class _CustomTextFeildState extends State<CustomTextFeild> {
  late bool obscureText = widget.obscureText;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: ColorManager.babyBlueColor,
          selectionHandleColor: ColorManager.babyBlueColor,
        ),
      ),
      child: TextFormField(
        keyboardType: widget.keyboardType,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: widget.controller,
        validator: widget.validator,
        obscureText: obscureText,
        style: TextStyle(fontFamily: FontFamilyManager.firaSans),
        cursorColor: ColorManager.primaryColor,
        decoration: InputDecoration(
          hintText: widget.hintText,
          suffixIcon: widget.obscureText
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  icon: obscureText
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off),
                )
              : null,
          prefixIcon: Icon(widget.prefixIcon),
          errorStyle: TextStyle(color: ColorManager.colorred),
          enabledBorder: buildOutlineInputBorder(
            color: ColorManager.enabledColor,
          ),
          focusedBorder: buildOutlineInputBorder(
            color: ColorManager.enabledColor,
          ),
          errorBorder: buildOutlineInputBorder(color: ColorManager.colorred),
          fillColor: ColorManager.colorWhite,
          filled: true,
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(RaduisManager.r10),
      borderSide: BorderSide(color: color, width: WidthManager.w1),
    );
  }
}
