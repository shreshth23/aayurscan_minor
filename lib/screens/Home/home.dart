import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2D481D),
      body: Center(
        child: Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    label: "Search",
                    widget: Icons.search,
                  ),
                  Card(
                    label: "PlantPlay",
                    widget: Icons.book,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    label: "FloraSpot",
                    widget: Icons.map,
                  ),
                  Card(
                    label: "FloraForum",
                    widget: Icons.people,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    label: "Settings",
                    widget: Icons.settings,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Card extends StatefulWidget {
  final IconData widget;
  final String label;
  Card({super.key, required this.widget, required this.label});

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Color(0xff233610)),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.white),
            child: Icon(
              widget.widget,
              size: 35,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            widget.label,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
