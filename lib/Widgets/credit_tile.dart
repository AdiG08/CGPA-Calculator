import 'package:counter_button/counter_button.dart';
import 'package:flutter/material.dart';

class CreditTile extends StatefulWidget {
  @override
  State<CreditTile> createState() => _CreditTileState();
}

class _CreditTileState extends State<CreditTile> {
  int counterValue = 1;
  @override
  Widget build(BuildContext context) {
    return CounterButton(
      loading: false,
      onChange: (int val) {
        setState(() {
          if (val != 0) {
            counterValue = val;
          }
        });
      },
      count: counterValue,
      countColor: Colors.purple,
      buttonColor: Colors.purpleAccent,
      progressColor: Colors.purpleAccent,
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
//     return Container(
//       color: Colors.grey,
//       child: ListTile(
//         title: Text(
//           '3',
//           textAlign: TextAlign.center,
//         ),
//         textColor: Colors.white,
//         trailing: Column(
//           children: [
//             Expanded(
//                 child: IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.arrow_drop_up),
//                     color: Colors.white)),
//             Expanded(
//                 child: IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.arrow_drop_down),
//                     color: Colors.white)),
//           ],
//         ),
//       ),
//     );
//   }
// }
