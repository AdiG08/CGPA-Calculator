import 'package:flutter/material.dart';

import 'credit_tile.dart';
import 'grade_tile.dart';

class SubjectList extends StatefulWidget {
  @override
  State<SubjectList> createState() => _SubjectListState();
}

class _SubjectListState extends State<SubjectList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            Expanded(child: GradeTile()),
            Expanded(child: CreditTile()),
          ],
        )
      ],
    );
  }
}
