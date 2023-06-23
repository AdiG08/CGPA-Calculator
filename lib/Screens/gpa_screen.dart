import 'package:cgpa_calc/Widgets/subject_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GPAScreen extends StatelessWidget {
  // List<List<String>> dropdownValues = List.generate(
  //   5,
  //   (row) => List<String>.generate(3, (col) => 'O'),
  // );

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(_mediaQuery.size.height * 0.02),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: _mediaQuery.size.height * 0.08,
                    width: _mediaQuery.size.width * 0.15,
                    child: const Image(
                      image: AssetImage('images/logo.png'),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(_mediaQuery.size.height * 0.02),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Text(
                      'GPA CALCULATOR',
                      style: GoogleFonts.quantico(
                        fontSize: _mediaQuery.size.height * 0.044,
                        color: Color(0xFF26E8E8),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(child: SubjectList()),
              FloatingActionButton.small(
                onPressed: () {},
                child: Icon(Icons.add),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: _mediaQuery.size.height * 0.02,
                  top: 20,
                  bottom: 32,
                  right: _mediaQuery.size.height * 0.02,
                ),
                child: Row(
                  children: [
                    Text(
                      'YOUR GPA',
                      style: GoogleFonts.quantico(
                        fontSize: _mediaQuery.size.height * 0.04,
                        color: Color(0xFF26E8E8),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      height: _mediaQuery.size.height * 0.09,
                      width: _mediaQuery.size.height * 0.19,
                      margin: EdgeInsets.only(
                        top: 0,
                        bottom: 32,
                        right: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(21.15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 5.0,
                            blurRadius: 10.0,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Expanded(
// child: Row(
// children: [
// Expanded(
// //flex: 1,
// child: Column(
// children: List.generate(5, (index) {
// return Expanded(
// child: Container(
// margin: EdgeInsets.all(15.0),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// border: Border.all(
// color: Colors.white,
// width: 0.5,
// ),
// boxShadow: [
// BoxShadow(
// color: Colors.white.withOpacity(0.2),
// spreadRadius: 5,
// blurRadius: 7,
// offset: Offset(0, 3),
// ),
// ],
// ),
// child: Align(
// alignment: Alignment.centerLeft,
// child: Padding(
// padding: EdgeInsets.symmetric(
// horizontal: _mediaQuery.size.width * 0.1,
// ),
// child: DropdownButton<String>(
// value: dropdownValues[index][0],
// style: TextStyle(color: Colors.white),
// icon: Icon(
// Icons.arrow_drop_down,
// color: Colors.white,
// ),
// underline: SizedBox(),
// onChanged: (String? newValue) {
// setState(() {
// dropdownValues[index][0] = newValue!;
// });
// },
// items: <String>[
// 'O',
// 'A+',
// 'A',
// 'B+',
// 'B',
// 'C'
// ].map<DropdownMenuItem<String>>(
// (String value) {
// return DropdownMenuItem<String>(
// value: value,
// child: Text(value),
// );
// },
// ).toList(),
// ),
// ),
// ),
// ),
// );
// }),
// ),
// ),
// Expanded(
// flex: 1,
// child: Column(
// children: List.generate(5, (index) {
// return Expanded(
// child: Container(
// margin: EdgeInsets.all(15.0),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// border: Border.all(
// color: Colors.white,
// width: 0.5,
// ),
// boxShadow: [
// BoxShadow(
// color: Colors.white.withOpacity(0.2),
// spreadRadius: 5,
// blurRadius: 7,
// offset: Offset(0, 3),
// ),
// ],
// ),
// child: Align(
// alignment: Alignment.centerLeft,
// child: Padding(
// padding: EdgeInsets.symmetric(
// horizontal: _mediaQuery.size.width * 0.1,
// ),
// child: DropdownButton<String>(
// value: dropdownValues[index][1],
// style: TextStyle(color: Colors.white),
// icon: Icon(
// Icons.arrow_drop_down,
// color: Colors.white,
// ),
// underline: SizedBox(),
// onChanged: (String? newValue) {
// setState(() {
// dropdownValues[index][1] = newValue!;
// });
// },
// items: <String>[
// 'O',
// 'A+',
// 'A',
// 'B+',
// 'B',
// 'C'
// ].map<DropdownMenuItem<String>>(
// (String value) {
// return DropdownMenuItem<String>(
// value: value,
// child: Text(value),
// );
// },
// ).toList(),
// ),
// ),
// ),
// ),
// );
// }),
// ),
// ),
// ],
// ),
// ),
