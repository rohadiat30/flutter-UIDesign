import 'package:jadi/signuppage.dart';
import 'homepage.dart';
import 'package:flutter/material.dart';
import 'customscrollbehavior.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController newTextEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  void dispose() {
    newTextEditingController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.blue,
          Colors.red,
        ],
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 100.0),
                  child: Column(
                    children: [
                      Text(
                        'Default Pincode Fields',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      PinCodeFields(
                        length: 4,
                        controller: newTextEditingController,
                        focusNode: focusNode,
                        onComplete: (result) {
                          // Your logic with code
                          print(result);
                        },
                      ),
                    ],
                  )))
        ],
      ),
    );
  }
}
