// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:assignment2_design/ReusableComponents/default_facebook_TextFormFaild.dart';
import 'package:assignment2_design/show_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color.fromRGBO(59, 89, 153, 1.0),
          ),
          SingleChildScrollView(
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 170.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.white,
                          size: 55,
                        ),
                        SizedBox(height: 10.0,),
                        DefaultTextFormFaild(text: 'Email or Phone'),
                        SizedBox(
                          height: 10.0,
                        ),
                        DefaultTextFormFaild(text: 'Password'),
                        SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ShowScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'LOG IN',
                            style: TextStyle(
                                color: Color.fromRGBO(164, 181, 219, 1.0),
                                fontSize: 15.0),
                          ),
                          color: Color.fromRGBO(78, 104, 161, 1.0),
                          minWidth: 340,
                          height: 43,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:150.0 ,),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign Up for Facebook',
                          style: TextStyle(color: Color.fromRGBO(221, 237, 251, 1.0),fontSize: 15.0),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Color.fromRGBO(221, 237, 251, 1.0),fontSize: 15.0),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
