import 'package:flutter/material.dart';
import 'package:tinder_clone/widgets/custom_text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  bool showProgressLoadingBar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 120,),

              Image.asset(
                "images/logo.png",
                width: 180,
              ),

              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),

              const SizedBox( height: 10,),

              const Text(
                "Login now to find your best match",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),
              ),

              const SizedBox(height: 28,),

              // email
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: emailTextEditingController,
                  labelText: 'Email',
                  iconData: Icons.email_outlined,
                  isObscure: false,
                ),
              ),

              const SizedBox(height: 24,),

              // password
              SizedBox(
                width: MediaQuery.of(context).size.width - 36, // adjust width according to that device screen
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: passwordTextEditingController,
                  labelText: 'Password',
                  iconData: Icons.lock_outline,
                  isObscure: true,
                ),
              ),

              const SizedBox(height: 30,),

              // login button
              Container(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  )
                ),
                child: InkWell(
                  onTap: () {

                  },
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text( 'Dont have an account? ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey
                  ),
                  ),
                  InkWell(
                    onTap: () {

                    },
                    child: const Text(
                      "Create Here",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  const SizedBox(height: 16,),

                  showProgressLoadingBar == true ?
                      const CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
                      )
                      : Container(),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}