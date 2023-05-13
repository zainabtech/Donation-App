import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      //width: double.infinity,
      height: 120,
      child: Image.asset(
        'assets/images/logo.jpeg',
        width: 150,
      ),
    );
  }
}
