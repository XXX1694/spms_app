import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spms_app/common/colors/main_colors.dart';

class LoginBlock extends StatefulWidget {
  const LoginBlock({Key? key}) : super(key: key);

  @override
  State<LoginBlock> createState() => _LoginBlockState();
}

class _LoginBlockState extends State<LoginBlock> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String password = '';
  bool isPasswordVisible = false;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          Container(
            height: 55,
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            child: TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: PSMSblack20,
                  ),
                  borderRadius: const BorderRadius.all(
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
                hintText: 'Email Adress',
                hintStyle: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: PSMSblack20,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 55,
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            child: TextField(
              controller: passwordController,
              onChanged: (value) => setState(() => password = value),
              onSubmitted: (value) => setState(() => password = value),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: PSMSblack20,
                  ),
                  borderRadius: const BorderRadius.all(
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
                hintStyle: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: PSMSblack20,
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
          ),
          const SizedBox(height: 25),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: PSMSmain100,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          CupertinoButton(
              padding: const EdgeInsets.all(0),
              child: Container(
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: PSMSmain100,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: signIn)
        ],
      ),
    );
  }

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
  }
}
