import 'package:donation_app/Authentication/common/page_heading.dart';
import 'package:donation_app/screens/DonorForm.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Menu Page',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w600)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xfff4ded0),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.handshake_outlined,
                      color: Colors.red.shade900,
                      size: 70,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      width: 2,
                      height: 140.0,
                      decoration: BoxDecoration(
                        color: Colors.red.shade900,
                      ),
                    ),
                    SizedBox(
                      width: 26,
                    ),
                    Column(
                      children: [
                        Text(
                          'Registered Charities',
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.red.shade700)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.red.shade900),
                            ),
                            onPressed: null,
                            child: Text(
                              'Continue',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xfff4ded0),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.health_and_safety,
                      color: Colors.red.shade900,
                      size: 70,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      width: 2,
                      height: 140.0,
                      decoration: BoxDecoration(
                        color: Colors.red.shade900,
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: [
                        Text(
                          'Care Packages',
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.red.shade700)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.red.shade900),
                            ),
                            onPressed: null,
                            child: Text(
                              'Continue',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xfff4ded0),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.money_rounded,
                      color: Colors.red.shade900,
                      size: 70,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      width: 2,
                      height: 140.0,
                      decoration: BoxDecoration(
                        color: Colors.red.shade900,
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: [
                        Text(
                          'Give Donation',
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.red.shade700)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.red.shade900),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const DonorForm()));
                            },
                            child: Text(
                              'Continue',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
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
