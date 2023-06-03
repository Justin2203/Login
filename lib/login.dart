import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home1.dart';
import 'main.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // @override
  final _formkey = GlobalKey<FormState>();

  final _userController = TextEditingController();

  final _passController = TextEditingController();

  // void validate() {
  //   if (_formkey.currentState!.validate()) {
  //     print("validated");
  //   } else {
  //     print("not validated");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 36, 190, 165),
        title: Text("!!Welcome!!"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'SignIn',
            style: TextStyle(
              fontSize: 35,
              // fontFamily:,
              letterSpacing: 3,
              color: Color.fromARGB(255, 36, 190, 165),
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: _userController,
                        maxLength: 6,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          hintText: 'Enter the Username',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onChanged: (String value) {},
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Username cannot be empty';
                          } else if (value.length < 6) {
                            return 'Must contain 6 characters';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: _passController,
                        maxLength: 5,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          prefixIcon: Icon(
                            Icons.lock,
                            // color: Color.fromARGB(255, 36, 190, 165),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onChanged: (String value) {
                          // Color.fromARGB(255, 36, 190, 165);
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Passwords cannot be empty';
                          } else if (value.length < 5) {
                            return 'Must contain  5 characters';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 110),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        minWidth: double.infinity,
                        onPressed: () {
                          checkLogin(context);
                          if (_formkey.currentState!.validate()) {
                          } else {
                            print('data empty');
                          }
                        },

                        color: Color.fromARGB(255, 36, 190, 165),
                        height: 50,
                        textColor: Colors.white,
                        // onPressed: validate,
                        child: const Text('Login'),
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }

  Future<void> checkLogin(BuildContext context) async {
    final _username = _userController.text;
    final _password = _passController.text;
    if (_username == 'Justin' && _password == '12345') {
      final _sharedPrefs = await SharedPreferences.getInstance();
      await _sharedPrefs.setBool(SAVE_KEY_NAME, true);
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx1) => Home()));

      showDialog(
          context: context,
          builder: (context) {
            Future.delayed(Duration(seconds: 2), () {
              Navigator.of(context).pop(true);
            });
            return AlertDialog(
                content: Text('You have successfully logged in'),
                actions: [
                  Center(
                    child: Image.asset(
                      'images/green.png',
                      height: 70,
                      width: 70,
                    ),
                  )
                ]);
          });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Username Password dosenot Match'),
          duration: Duration(seconds: 3),
          margin: EdgeInsets.all(20),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
        ),
      );
      showDialog(
          context: context,
          builder: (context) {
            Future.delayed(Duration(seconds: 2), () {
              Navigator.of(context).pop(true);
            });
            return AlertDialog(
                content: Text('Sorry,Failed to Log In'),
                actions: [
                  Center(
                    child: Image.asset(
                      'images/red.webp',
                      height: 70,
                      width: 70,
                    ),
                  )
                ]);
          });
      // print('Username Password dosenot Match');
    }
  }
}
