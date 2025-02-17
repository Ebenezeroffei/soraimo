import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soraimo/core/constants/theme_ids.dart';
import 'package:soraimo/core/extensions/extensions.dart';
import 'package:soraimo/core/validators/validators.dart';
import 'package:theme_provider/theme_provider.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final Function(String)? onChangeHandler;
  final String label;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  final String? Function(String?)? validator;
  final bool isPassword;
  final String? helperText;
  final TextInputType? keyboardType;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    this.inputFormatters,
    this.helperText,
    this.keyboardType,
    bool? isPassword,
    bool? obscureText,
    bool? addPadding,
    this.validator,
    this.onChangeHandler,
  })  : obscureText = obscureText ?? false,
        isPassword = isPassword ?? false;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();

  factory CustomTextField.password({
    required TextEditingController controller,
    String label = 'Password',
    String? Function(String?)? validator,
    Function(String)? onChangeHandler,
    String? helperText,
    String? errorMessage =
        "The password must be 6-16 characters long and include both numbers and letters.",
    bool addPadding = true,
  }) {
    defaultValidator(String? value) {
      if (value != null) {
        return Validators.password.hasMatch(value) ? null : errorMessage;
      }
      return errorMessage;
    }

    return CustomTextField(
      controller: controller,
      label: label,
      isPassword: true,
      obscureText: true,
      helperText: helperText,
      validator: validator ?? defaultValidator,
      onChangeHandler: onChangeHandler,
    );
  }

  factory CustomTextField.email({
    required TextEditingController controller,
    String label = 'Email',
    String? helperText,
    Function(String)? onChangeHandler,
    String? Function(String?)? validator,
    String? errorMessage = "Provide a valid email.",
  }) {
    defaultValidator(String? value) {
      if (value != null) {
        return Validators.email.hasMatch(value) ? null : errorMessage;
      }
      return errorMessage;
    }

    return CustomTextField(
      controller: controller,
      label: label,
      helperText: helperText,
      validator: validator ?? defaultValidator,
      onChangeHandler: onChangeHandler,
    );
  }

  factory CustomTextField.number({
    required TextEditingController controller,
    required String label,
    String? helperText,
    Function(String)? onChangeHandler,
    String? Function(String?)? validator,
    String? errorMessage,
  }) {
    defaultValidator(String? value) {
      if (value != null) {
        return value.isNumber() ? null : errorMessage;
      }
      return errorMessage;
    }

    final defaultInputFormatter = [
      FilteringTextInputFormatter.allow(RegExp(r'\d'))
    ];

    return CustomTextField(
      controller: controller,
      label: label,
      keyboardType: TextInputType.number,
      helperText: helperText,
      validator: validator ?? defaultValidator,
      onChangeHandler: onChangeHandler,
      inputFormatters: defaultInputFormatter,
    );
  }
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureTextState = false;

  @override
  void initState() {
    super.initState();
    obscureTextState = widget.obscureText;
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  final defaultOutlineBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(
      color: Colors.grey.shade300,
      width: 1,
    ),
  );

  void toggleTextObscurity() => setState(() {
        obscureTextState = !obscureTextState;
      });

  @override
  Widget build(BuildContext context) {
    final themeId = ThemeProvider.themeOf(context).id;

    return TextFormField(
      controller: widget.controller,
      cursorColor: ThemeIds.customLightTheme == themeId
          ? Colors.grey.shade800
          : Colors.grey.shade100,
      inputFormatters: widget.inputFormatters,
      cursorHeight: 18,
      validator: widget.validator,
      obscureText: obscureTextState,
      obscuringCharacter: "*",
      onChanged: widget.onChangeHandler,
      keyboardType: widget.keyboardType,
      style: TextStyle(
        color: ThemeIds.customLightTheme == themeId
            ? Colors.grey.shade800
            : Colors.grey.shade100,
        fontWeight: FontWeight.w300,
        fontSize: 15,
      ),
      cursorErrorColor: Colors.grey.shade800,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: toggleTextObscurity,
                color: ThemeIds.customLightTheme == themeId
                    ? Colors.grey.shade800
                    : Colors.grey.shade100,
                icon: Icon(
                  obscureTextState
                      ? Icons.visibility_off_rounded
                      : Icons.visibility_rounded,
                  size: 20,
                ),
              )
            : null,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        helperText: widget.helperText,
        helperStyle: TextStyle(
          fontWeight: FontWeight.w400,
        ),
        helperMaxLines: 3,
        hintText: widget.label,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w300,
          fontSize: 15,
        ),
        border: defaultOutlineBorder,
        focusedBorder: defaultOutlineBorder,
        enabledBorder: defaultOutlineBorder,
        errorBorder: defaultOutlineBorder,
        focusedErrorBorder: defaultOutlineBorder,
        errorMaxLines: 3,
      ),
    ).padY(8);
  }
}
