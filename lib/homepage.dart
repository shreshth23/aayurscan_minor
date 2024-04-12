// import 'package:aayurscan_minor/screens/Home/home.dart';
import 'package:aayurscan_minor/screens/ScannerPage/_scanner.dart';
import 'package:aayurscan_minor/screens/history.dart';
import 'package:aayurscan_minor/screens/search.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.screenData, required this.body});
  final Widget body;
  final int screenData;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int screen;
  bool forFirst = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              widget.body,
              Container(
                  color: Colors.black54,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          child: Image.asset(
                            "assets/images/icon.jpg",
                            width: 50,
                            height: 50,
                          ),
                        ),
                        Text(
                          "AayurScan",
                          style: GoogleFonts.pacifico(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
        backgroundColor: const Color(0xff2D481D),
        bottomNavigationBar: CurvedNavigationBar(
          index: widget.screenData,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 300),
          backgroundColor: const Color(0xff2D481D),
          items: [
            GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomePage(screenData: 0, body: ScannerPage())));
                },
                child: Icon(
                  Icons.home,
                )),
            GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomePage(screenData: 1, body: ScannerPage())));
                },
                child: Icon(
                  Icons.search,
                )),
            GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomePage(screenData: 2, body: History())));
                },
                child: Icon(
                  Icons.history,
                )),
          items: [
            GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage(screenData: 0, body: Home())));
                },
                child: Icon(Icons.home,)
            ),
            GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage(screenData: 1, body: ScannerPage())));
                },
                child: Icon(Icons.search,)
            ),
            GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage(screenData: 2, body: Home())));
                },
                child: Icon(Icons.history,)
            ),
          ],
          onTap: (value) {
            setState(() {
              forFirst = false;
              screen = value;
            });
          },
        ),
      ),
    );
  }
}
