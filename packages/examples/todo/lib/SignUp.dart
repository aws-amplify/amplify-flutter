import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  void _signUp() async {
    Navigator.pop(context, true);

    /*
    setState(() {
      error = "";
      exceptions = [];
    });
     */
    Map<String, dynamic> userAttributes = {
      "email": emailController.text,
      "phone_number": phoneController.text,
      "address": "123 MyStreet"
    };
    try {
      SignUpResult res = await Amplify.Auth.signUp(
        request: SignUpRequest(
            username: usernameController.text.trim(),
            password: passwordController.text.trim(),
            options: CognitoSignUpOptions(userAttributes: userAttributes)),
      );
      setState(() {
        /*
        displayState =
        res.nextStep.signUpStep == "DONE" ? "SHOW_CONFIRM" : "SHOW_SIGN_UP";
        authState = "Signup: " + res.nextStep.signUpStep;
         */
      });
    } on AuthError catch (e) {
      setState(() {
        /*
        error = e.cause;
        e.exceptionList.forEach((el) {
          exceptions.add(el.exception);
        });
         */
      });
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          // wrap your Column in Expanded
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextFormField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'The name you will use to login',
                    labelText: 'Username *',
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.lock),
                    hintText: 'The password you will use to login',
                    labelText: 'Password *',
                  ),
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: 'Your email address',
                    labelText: 'Email *',
                  ),
                ),
                TextFormField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.phone),
                    hintText: 'Your phone number',
                    labelText: 'Phone number *',
                  ),
                ),
                const Padding(padding: EdgeInsets.all(10.0)),
                RaisedButton(
                  onPressed: _signUp,
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}