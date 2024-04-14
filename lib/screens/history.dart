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

  // List foundPlant = [];
  void initState() {
    super.initState();
    if (_mybox.get("TODOLIST") == null) {
      db.initialContent();
    } else {
      db.loadData();
    }
    // foundPlant = db.plant;
  }

  void deleteTask(int index) {
    setState(() {
      db.plant.removeAt(index);
    });
    db.updateDatabase();
  }

  // void result(String enteredkeyword) {
  //   List res = [];
  //   if (enteredkeyword.isEmpty) {
  //     res = foundPlant;
  //   }else{

  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2D481D),
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        // width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 40.00, right: 40.00),
              child: TextField(
                // onChanged: (value) => result(value),
                decoration: InputDecoration(
                    fillColor: Color(0xff233610),
                    prefixIconColor: Colors.white,
                    labelText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    // enabled: false,
                    prefixIcon: Icon(Icons.search),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    )),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: db.plant.length,
                  itemBuilder: (context, index) {
                    return PlantHistory(
                      commonname: db.plant[index][0],
                      deleteFunction: (context) => deleteTask(index),
                    );
                    // } else {
                    //   return SizedBox();
                    // }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
