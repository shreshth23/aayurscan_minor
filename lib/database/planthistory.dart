import "package:flutter/material.dart";
import "package:flutter_slidable/flutter_slidable.dart";

class PlantHistory extends StatelessWidget {
  final commonname;
  // Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;
  PlantHistory({
    super.key,
    required this.commonname,
    // required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 25.0, top: 10.0, right: 25.0, bottom: 10.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade900,
            )
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    commonname,
                    style: TextStyle(color: Colors.white),
                    // textAlign: TextAlign.left,
                  ),
                ],
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff233610),
          ),
        ),
      ),
    );
  }
}
