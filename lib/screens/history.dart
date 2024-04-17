import 'package:aayurscan_minor/database/historydatabase.dart';
import 'package:aayurscan_minor/database/planthistory.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  final _mybox = Hive.box('mybox');

  HistoryDatabase db = HistoryDatabase();

  void deleteTask(int index) {
    setState(() {
      db.plant.removeAt(index);
    });
    db.updateDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff2D481D),
        body: Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
          child: ListView.builder(
              itemCount: db.plant.length,
              itemBuilder: (context, index) {
                // if (index <= db.plant.length) {

                return PlantHistory(
                  scientificname: db.plant[index][0],
                  commonname: db.plant[index][1],
                  deleteFunction: (context) => deleteTask(index),
                );
                // } else {
                //   return SizedBox();
                // }
              }),
        ));
  }
}
