import 'package:arminogameapp/utils/colors.dart';
import 'package:arminogameapp/view/empty.dart';
import 'package:arminogameapp/view/gamescreen.dart';
import 'package:arminogameapp/view/widgets.dart';
import 'package:flutter/material.dart';

class TabPage extends StatelessWidget {
  const TabPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: bg,
          leading: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              backgroundColor: purp,
              radius: 28,
              child: CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage("assets/Profile.png"),
              ),
            ),
          ),
          title: Transform(
            transform: Matrix4.translationValues(1.0, 0.0, 0.0),
            child: const Text(
              "John",
              style: TextStyle(
                  color: white, fontWeight: FontWeight.w700, fontSize: 23),
            ),
          ),
          actions: [buttonforsearching(), buttonfornotification()],
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(1.0),
              child: Container(
                color: div,
                height: 2.0,
              )),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: div, width: 1.0))),
          child: const Material(
            color: black,
            child: TabBar(
              labelColor: purp,
              unselectedLabelColor: grey,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: purp, width: 6.0),
                insets: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 40.0),
              ),
              tabs: [
                Tab(
                    child: Icon(
                  Icons.list,
                )),
                Tab(
                    child: Icon(
                  Icons.calendar_month_rounded,
                )),
                Tab(
                    child: Icon(
                  Icons.favorite_outline,
                )),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Gamescreen(),
            Empty(),
            Empty(),
          ],
        ),
      ),
    );
  }
}
