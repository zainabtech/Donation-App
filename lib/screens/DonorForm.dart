import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Authentication/common/custom_input_field.dart';
import '../Authentication/common/page_header.dart';

class DonorForm extends StatefulWidget {
  const DonorForm({Key? key}) : super(key: key);

  @override
  State<DonorForm> createState() => _DonorFormState();
}

class _DonorFormState extends State<DonorForm> {
  // Get the values from the text fields
  final _signupFormKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _AddressController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _AgeController = TextEditingController();
  final TextEditingController _CNICController = TextEditingController();

  int _selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sadqa'),
          backgroundColor: Colors.red.shade900,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: const Color(0xffEEF1F3),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Donor Form',
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _signupFormKey,
                child: Column(
                  children: [
                    Column(
                      children: [
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
                          controller: _AddressController,
                          labelText: 'Address',
                          hintText: 'Address here',
                          isDense: true,
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
                            hintText: '+92-XXX-XXXXXXXX',
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
                        CustomInputField(
                            controller: _CNICController,
                            labelText: 'CNIC',
                            hintText: '61101-XXX-XXXX-X',
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
                        CustomInputField(
                            controller: _AgeController,
                            labelText: 'Age',
                            hintText: 'Age here i.e 20yrs',
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
                              horizontal: 24, vertical: 3),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Select Gender',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.red.shade900,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                      Text(
                                        'Male',
                                        style: TextStyle(
                                            color: Colors.red.shade900),
                                      ),
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
                                      Text(
                                        'Female',
                                        style: TextStyle(
                                            color: Colors.red.shade900),
                                      ),
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
                                      Text(
                                        'Other',
                                        style: TextStyle(
                                            color: Colors.red.shade900),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.red.shade900),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Feedback submitted')),
                          );
                        },
                        child: Text(
                          'Submit',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
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
