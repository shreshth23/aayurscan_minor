import 'package:aayurscan_minor/homepage.dart';
import 'package:aayurscan_minor/screens/result.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';

import 'package:image_picker/image_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  bool loader = false;

  late String imagePath;
  bool imgSelected = false;
  final imagePicker = ImagePicker();

  Future getImage(int way) async {
    List<dynamic> src = [ImageSource.gallery, ImageSource.camera];
    final image = await imagePicker.pickImage(source: src[way]);
    if (image != null) {
      setState(() {
        imagePath = image.path;
        imgSelected = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2D481D),
        body: SafeArea(
          child: Container(
            width: 360,
            height: 720,
            margin: EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(65)),
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Container(
                  width: 280,
                  height: 650,
                  margin:
                  EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
                Container(
                  child: imgSelected
                      ? Container(

                    margin: EdgeInsets.only(top: 100),
                    alignment: Alignment.topCenter,
                    child: ClipRRect(
                      child: Image.file(
                        File(imagePath),
                        height: 180,
                        width: 180,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                  )
                      : Stack(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 100),
                        child: ClipRRect(
                          borderRadius:
                          BorderRadius.all(Radius.circular(100)),
                          child: Image.asset(
                            "assets/images/scanning.gif",
                            width: 180,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 15, vertical: 70),
                        width: 360,
                        height: 24,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(0, 0, 0, 0.8)),
                        child: Text(
                          "Scan or upload an image",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.abhayaLibre(
                              fontSize: 16, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(top: 110, right: 58, left: 58),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: 45,
                        height: 45,
                        child: IconButton(
                          onPressed: () {
                            getImage(0);
                          },
                          icon: const Icon(
                            Icons.file_upload_outlined,
                            size: 24,
                          ),
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 45, 90, 51),
                            border: Border.all(color: Colors.black12, width: 2),
                            borderRadius:
                            BorderRadius.all(Radius.circular(50))),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: 68,
                        height: 68,
                        child: IconButton(
                          onPressed: () => getImage(1),
                          icon: const Icon(
                            Icons.camera_alt,
                            size: 38,
                          ),
                          color: Color.fromARGB(255, 45, 90, 51),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12, width: 2),
                            borderRadius:
                            BorderRadius.all(Radius.circular(50))),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 45,
                        width: 45,
                        child: IconButton(
                          onPressed: () {
                            if (!imgSelected) {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text("Close"))
                                      ],
                                      // title: Text(
                                      //   "AayurScan",
                                      //   style: GoogleFonts.pacifico(fontSize: 32),
                                      // ),
                                      contentPadding: const EdgeInsets.all(20),
                                      content:
                                      const Text("Image not selected !"),
                                    );
                                  });
                              return;
                            }
                            print("something");
                            Timer(const Duration(seconds: 3), () {
                              print("Lets go");
                              setState(() {
                                loader=false;
                              });
                              Navigator.of(context).pushReplacementNamed("/result");
                            });
                            setState(() {
                              loader = true;
                            });
                          },
                          icon: const Icon(
                            Icons.arrow_right,
                            size: 24,
                          ),
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12, width: 2),
                            color: Color.fromARGB(255, 45, 90, 51),
                            borderRadius:
                            BorderRadius.all(Radius.circular(50))),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 50),
                  child: Text(
                    "Scanner",
                    style: GoogleFonts.martianMono(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                loader
                    ? Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    child: Image.asset(
                      "assets/images/loader.gif",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.all(Radius.circular(100))),
                )
                    : SizedBox()
              ],
            ),
          ),
        ));
  }
}
