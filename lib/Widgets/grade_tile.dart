import 'package:cgpa_calc/data.dart';
import 'package:flutter/material.dart';

class GradeTile extends StatefulWidget {
  @override
  State<GradeTile> createState() => _GradeTileState();
}

class _GradeTileState extends State<GradeTile> {
  String selectedGrade = 'O';

  List<DropdownMenuItem<String>> getDropdownItems() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String grade in gradeList) {
      var newItem = DropdownMenuItem(
        child: Text(grade),
        value: grade,
      );
      dropdownItems.add(newItem);
    }
    return dropdownItems;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Center(
        child: DropdownButton<String>(
          value: selectedGrade,
          items: getDropdownItems(),
          onChanged: (value) {
            setState(() {
              selectedGrade = value!;
            });
          },
        ),
      ),
    );
  }
}

// class willsee extends StatelessWidget {
//   const willsee({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//         title: Text(
//           'O',
//           textAlign: TextAlign.center,
//         ),
//         textColor: Colors.white,
//         tileColor: Colors.red,
//         trailing: DropdownButton<String>(
//           items: [],
//           onChanged: (value) {},
//         ),
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10),
//             side: BorderSide(width: 2, color: Colors.grey))
//         //border: Border.all(color: Colors.white,width: 0.5,),
//         );
//   }
// }
