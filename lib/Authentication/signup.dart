import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'common/custom_form_button.dart';
import 'common/custom_input_field.dart';
import 'common/page_header.dart';
import 'common/page_heading.dart';
import 'login.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // Get the values from the text fields
  final _signupFormKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordConfirmationController =
      TextEditingController();
  int _selectedOption = 1;
  bool _isloading = false;

  bool containsNumber(String str) {
    RegExp regExp = RegExp(r'\d');
    return regExp.hasMatch(str);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEF1F3),
      body: SingleChildScrollView(
        child: Form(
          key: _signupFormKey,
          child: Column(
            children: [
              const PageHeader(),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    const PageHeading(
                      title: 'Sign-up',
                    ),
                    CustomInputField(
                        controller: _firstNameController,
                        labelText: 'First Name',
                        hintText: 'Your First name',
                        isDense: true,
                        validator: (textValue) {
                          if (textValue == null || textValue.isEmpty) {
                            return 'Firstname field is required!';
                          }
                          return null;
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomInputField(
                        controller: _lastNameController,
                        labelText: 'Last Name',
                        hintText: 'Your Last name',
                        isDense: true,
                        validator: (textValue) {
                          if (textValue == null || textValue.isEmpty) {
                            return 'Lastname field is required!';
                          }
                          return null;
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomInputField(
                        controller: _emailController,
                        labelText: 'Email',
                        hintText: 'Your email id',
                        isDense: true,
                        validator: (textValue) {
                          if (textValue == null || textValue.isEmpty) {
                            return 'Email is required!';
                          }
                          return null;
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomInputField(
                      controller: _passwordController,
                      labelText: 'Password',
                      hintText: 'Your Password',
                      isDense: true,
                      obscureText: true,
                      validator: (textValue) {
                        if (textValue == null || textValue.isEmpty) {
                          return 'Password is required!';
                        }
                        return null;
                      },
                      suffixIcon: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomInputField(
                      controller: _passwordConfirmationController,
                      labelText: 'Re-type Password',
                      hintText: 'Your password',
                      isDense: true,
                      obscureText: true,
                      validator: (textValue) {
                        if (textValue == null || textValue.isEmpty) {
                          return 'Password is required!';
                        }
                        return null;
                      },
                      suffixIcon: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomInputField(
                        controller: _phoneNumberController,
                        labelText: 'Phone Number',
                        hintText: 'XXX-XXX-XXXX',
                        isDense: true,
                        validator: (textValue) {
                          if (textValue == null || textValue.isEmpty) {
                            return 'Phone Number field is required!';
                          }
                          return null;
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 33, vertical: 3),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Select Gender',
                              style: const TextStyle(
                                  fontSize: 13.5, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: 1,
                                    groupValue: _selectedOption,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedOption = value!;
                                      });
                                    },
                                  ),
                                  Text('Male'),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: 2,
                                    groupValue: _selectedOption,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedOption = value!;
                                      });
                                    },
                                  ),
                                  Text('Female'),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: 3,
                                    groupValue: _selectedOption,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedOption = value!;
                                      });
                                    },
                                  ),
                                  Text('Other'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    _isloading
                        ? SpinKitDualRing(
                            color: Color(0xff6576ff),
                            size: 100,
                          )
                        : CustomFormButton(
                            innerText: 'Signup',
                            onPressed: () {
                              if (containsNumber(
                                      _firstNameController.text.toString()) ==
                                  false) {
                                if (containsNumber(
                                        _lastNameController.text.toString()) ==
                                    false) {
                                  if (_passwordController.text
                                          .toString()
                                          .length >=
                                      8) {
                                    if (_passwordController.text.toString() ==
                                        _passwordConfirmationController.text
                                            .toString()) {
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                'Passwords and Re-type password both should match',
                                                style: TextStyle(
                                                    color:
                                                        Colors.red.shade900))),
                                      );
                                    }
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              'Length of password should be equal or greater than 8',
                                              style: TextStyle(
                                                  color: Colors.red.shade900))),
                                    );
                                  }
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                            'Last name should not contain any numbers',
                                            style: TextStyle(
                                                color: Colors.red.shade900))),
                                  );
                                }
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(
                                    'First name should not contain any numbers',
                                    style:
                                        TextStyle(color: Colors.red.shade900),
                                  )),
                                );
                              }
                            }),
                    SizedBox(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account ? ',
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xff939393),
                                  fontWeight: FontWeight.bold),
                            ),
                            GestureDetector(
                              onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage()))
                              },
                              child: Text(
                                'Log-in',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.red.shade900,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
