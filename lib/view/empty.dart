import 'package:arminogameapp/utils/colors.dart';
import 'package:arminogameapp/view/widgets.dart';
import 'package:flutter/material.dart';

class Empty extends StatelessWidget {
  const Empty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: bg,body: circularindicator());
  }
}
