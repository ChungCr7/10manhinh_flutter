import 'package:flutter/material.dart';
import 'package:flutter_baochung_app/all_manhinh/manhinh1.dart';
import 'package:flutter_baochung_app/all_manhinh/manhinh2.dart';
import 'package:flutter_baochung_app/all_manhinh/manhinh3.dart';
import 'package:flutter_baochung_app/all_manhinh/manhinh4.dart';
import 'package:flutter_baochung_app/all_manhinh/manhinh5.dart';
import 'package:flutter_baochung_app/all_manhinh/manhinh6.dart';
import 'package:flutter_baochung_app/all_manhinh/manhinh7.dart';
import 'package:flutter_baochung_app/all_manhinh/manhinh8.dart';
import 'package:flutter_baochung_app/all_manhinh/manhinh9.dart';
import 'package:flutter_baochung_app/all_manhinh/manhinh10.dart';

class ManhinhFlutter extends StatefulWidget {
  const ManhinhFlutter({super.key});

  @override
  State<ManhinhFlutter> createState() => _ManhinhFlutterState();
}

class _ManhinhFlutterState extends State<ManhinhFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Manhinh1(),
          Manhinh2(),
          Manhinh3(),
          Manhinh4(),
          Manhinh5(),
          Manhinh6(),
          Manhinh7(),
          Manhinh8(),
          Manhinh9(),
          const Manhinh10(),
        ],
      ),
    );
  }
}
