import 'package:aayurscan_minor/homepage.dart';
import 'package:aayurscan_minor/screens/ScannerPage/scanner_util.dart';
import 'package:aayurscan_minor/screens/result.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';

import 'package:image_picker/image_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key,});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2D481D),
        body: Scanner()
    );
  }
}
