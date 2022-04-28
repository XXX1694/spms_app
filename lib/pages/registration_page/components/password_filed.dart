import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class PasswordFiled extends StatefulWidget {
  const PasswordFiled({Key? key}) : super(key: key);

  @override
  State<PasswordFiled> createState() => _PasswordFiledState();
}

class _PasswordFiledState extends State<PasswordFiled> {
  String password = '';

  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: TextField(
        onChanged: (value) => setState(() => password = value),
        onSubmitted: (value) => setState(() => password = value),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black26,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: PSMSmain100,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          hintText: 'Password',
          hintStyle: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: Colors.black26,
          ),
          suffixIcon: IconButton(
            icon: isPasswordVisible
                ? Icon(Icons.visibility_off, color: PSMSmain100)
                : const Icon(Icons.visibility, color: Colors.black26),
            onPressed: () => setState(
              () => isPasswordVisible = !isPasswordVisible,
            ),
          ),
        ),
        obscureText: isPasswordVisible,
      ),
    );
  }
}
