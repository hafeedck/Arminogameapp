import 'package:arminogameapp/model/modelclass.dart';
import 'package:arminogameapp/controller/provider.dart';
import 'package:arminogameapp/utils/colors.dart';
import 'package:arminogameapp/view/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Gamescreen extends StatelessWidget {
  const Gamescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 21,
                  left: MediaQuery.of(context).size.width / 18),
              child: const Text(
                "Popular",
                style: TextStyle(
                  color: purp,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 3,
              child: FutureBuilder<List<Welcome>>(
                future: context.read<GamedataProvider>().data,
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: snapshot.data?.length,
                        itemBuilder: ((context, index) {
                          return boxContainer(
                              url: snapshot.data?[index].cover?.url ?? "",
                              Gamename: snapshot.data?[index].name);
                        }));
                  } else {
                    return Center(child: circularindicator());
                  }
                }),
              ),
            ),
            divider(),
            Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height / 35),
              child: gamesystemlist(),
            ),
            Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height / 40),
              child: gamecatagorylist(),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 21,
                  left: MediaQuery.of(context).size.width / 18),
              child: const Text(
                "Today",
                style: TextStyle(
                  color: purp,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              child: FutureBuilder<List<Welcome>>(
                future: context.read<GamedataProvider>().data,
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: snapshot.data?.length,
                        itemBuilder: ((context, index) {
                          return box2Container(
                              url: snapshot.data?[index].cover?.url ?? "",
                              Gamename: snapshot.data?[index].name);
                        }));
                  } else {
                    return Center(child: circularindicator());
                  }
                }),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 21,
                  left: MediaQuery.of(context).size.width / 18),
              child: const Text(
                "This week",
                style: TextStyle(
                  color: purp,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              child: FutureBuilder<List<Welcome>>(
                future: context.read<GamedataProvider>().data,
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: snapshot.data?.length,
                        itemBuilder: ((context, index) {
                          return box2Container(
                              url: snapshot.data?[index].cover?.url ?? "",
                              Gamename: snapshot.data?[index].name);
                        }));
                  } else {
                    return Center(child: circularindicator());
                  }
                }),
              ),
            ),
          ])),
    );
  }
}
