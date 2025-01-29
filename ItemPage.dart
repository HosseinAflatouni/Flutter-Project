import 'package:untitled4/widgets/ItemAppBar.dart';
import 'package:flutter/material.dart';

class Itempage extends StatelessWidget {
  const Itempage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEDECF2),
        body: ListView(
          children: [
            ItemAppBar(),
          ],
        ));
  }
}
