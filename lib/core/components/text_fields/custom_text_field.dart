import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soraimo/core/validators/validators.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  final String? Function(String?)? validator;
  final bool isPassword;

  const CustomTextField(
      {super.key,
      required this.controller,
      required this.label,
      this.inputFormatters,
      bool? isPassword,
      bool? obscureText,
      this.validator})
      : obscureText = obscureText ?? false,
        isPassword = isPassword ?? false;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();

  factory CustomTextField.password({
    required TextEditingController controller,
    String label = 'Password',
    String? Function(String?)? validator,
    String? errorMessage =
        "The password must be 6-16 characters long and include both numbers and letters.",
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
      validator: validator ?? defaultValidator,
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

  final defaultOutlineButton = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey.shade400,
      width: 1,
    ),
  );

  void toggleTextObscurity() => setState(() {
        obscureTextState = !obscureTextState;
      });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.grey.shade800,
      inputFormatters: widget.inputFormatters,
      cursorHeight: 18,
      validator: widget.validator,
      obscureText: obscureTextState,
      obscuringCharacter: "*",
      style: TextStyle(
        color: Colors.grey.shade800,
        fontWeight: FontWeight.w300,
        fontSize: 15,
      ),
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: toggleTextObscurity,
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
        hintText: widget.label,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w300,
          fontSize: 15,
        ),
        border: defaultOutlineButton,
        focusedBorder: defaultOutlineButton,
      ),
    );
  }
}
