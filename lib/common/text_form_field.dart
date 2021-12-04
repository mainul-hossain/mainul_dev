import 'package:flutter/material.dart';
import 'package:mainul_dev/utils/colors.dart';
import 'package:mainul_dev/utils/constants.dart';

class EditText extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? initialText;
  final String? hintText;
  final String? prefix;
  final Icon? icon;
  final TextInputType? type;
  final int? maxLength;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;
  final bool? obscureText;
  final String? errorText;
  final Icon? suffixIcon;
  final Function()? suffixIconPressed;
  final isDarkTheme;

  EditText(
      {this.controller,
      required this.labelText,
      this.initialText,
      this.hintText,
      this.prefix,
      this.icon,
      this.type,
      this.maxLength,
      this.onChanged,
      this.validator,
      this.onSaved,
      this.obscureText,
      this.errorText,
      this.suffixIcon,
      this.suffixIconPressed,
      this.isDarkTheme});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialText,
      autofocus: false,
      obscureText: obscureText ?? false,
      keyboardType: type,
      maxLength: maxLength,
      onChanged: onChanged,
      validator: validator,
      onSaved: onSaved,
      style: TextStyle(color: colorWhite),
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultBorderRadius),
              borderSide: BorderSide(width: defaultBorderWidth, color: accentColor)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
            borderSide:
                BorderSide(width: defaultBorderWidth, color: isDarkTheme ? colorGrey.withOpacity(0.4) : colorLightGrey),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
            borderSide: BorderSide(width: defaultBorderWidth, color: colorRed),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
            borderSide: BorderSide(width: defaultBorderWidth, color: colorRed),
          ),
          labelText: labelText,
          labelStyle: TextStyle(fontSize: fontSizeNormal, color: isDarkTheme ? textColorDark : textColor),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: fontSizeNormal),
          counterText: '',
          contentPadding: EdgeInsets.symmetric(vertical: defaultPadding, horizontal: defaultPadding),
          errorText: errorText,
          prefixText: prefix,
          prefixStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
          prefixIcon: icon,
          suffixIcon: suffixIcon != null
              ? IconButton(
                  icon: suffixIcon!,
                  color: colorGrey,
                  onPressed: suffixIconPressed,
                )
              : null),
    );
  }
}
