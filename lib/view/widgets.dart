import 'package:arminogameapp/utils/colors.dart';
import 'package:arminogameapp/utils/image.dart';
import 'package:arminogameapp/utils/list.dart';
import 'package:flutter/material.dart';

buttonforsearching() {
  return IconButton(
    icon: const Icon(
      Icons.search_outlined,
      color:purp,
    ),
    onPressed: () {},
  );
}

buttonfornotification() {
  return IconButton(
    icon: const Icon(
      Icons.notifications,
      color: purp,
    ),
    onPressed: () {},
  );
}

divider() {
  return const Divider(
    color: purp,
    thickness: 1,
  );
}

// ignore: non_constant_identifier_names
boxContainer({String? url, String? Gamename}) {
  return Padding(
    padding: const EdgeInsets.only(right: 45.0, left: 18, top: 10),
    child: Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Stack(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: url!.isNotEmpty
                        ? NetworkImage("https:$url")
                        : NetworkImage(url1),
                    fit: BoxFit.fitWidth),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12))),
            height: 159,
            width: 330,
          ),
          Padding(
              padding: const EdgeInsets.only(top: 65.0),
              child: IconButton(
                icon: const Icon(Icons.keyboard_arrow_left),
                color: white,
                iconSize: 50,
                onPressed: () {},
              )),
          Padding(
              padding: const EdgeInsets.only(top: 65, left: 260),
              child: IconButton(
                icon: const Icon(Icons.keyboard_arrow_right),
                color: white,
                iconSize: 50,
                onPressed: () {},
              ))
        ]),
        Container(
          decoration: const BoxDecoration(
              color:div,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12))),
          width: 330,
          height: 57,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  Gamename ?? "",
                  style: const TextStyle(
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline),
                color: purp
              )
            ],
          ),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
box2Container({String? url, String? Gamename}) {
  return Padding(
    padding: const EdgeInsets.only(right: 8.0, left: 12, top: 15),
    child: Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: url!.isNotEmpty
                      ? NetworkImage("https:$url")
                      : NetworkImage(url1),
                  fit: BoxFit.fitWidth),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12))),
          height: 159,
          width: 330,
        ),
        Container(
          decoration: const BoxDecoration(
              color: div,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12))),
          width: 330,
          height: 130,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      Gamename ?? "",
                      style: const TextStyle(
                          color: white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline),
                    color: purp,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 27,
                   // width: 14,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        color: purp),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.calendar_month_outlined,
                            color: black,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "12 Feb 2021",
                            style: TextStyle(
                                color: white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 27,
                      width: 104,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                          color: purp),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Image.asset("assets/9.png")),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Adventure",
                              style: TextStyle(
                                  color: white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 27,
                    width: 90,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        color: purp),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image.asset("assets/8.png")),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Action",
                            style: TextStyle(
                                color: white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Download",
                      style: TextStyle(
                          color: grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3, left: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/7.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/1.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/2.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/3.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/4.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/5.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/6.png"),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}

gamesystemlist() {
  return Padding(
    padding: const EdgeInsets.only(left: 4.0),
    child: SizedBox(
      height: 35,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: system.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                height: 22,
                decoration: BoxDecoration(
                  color: div,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      system[index],
                      style: const TextStyle(
                          color: white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ),
                ),
              ),
            );
          })),
    ),
  );
}

gamecatagorylist() {
  return Padding(
    padding: const EdgeInsets.only(left: 4.0),
    child: SizedBox(
      height: 45,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: catagory.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: InkWell(onTap: () {
                
              },
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                      color: div,
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(color: const Color(0xff7560E3))),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(image[index] ?? "null"),
                          Text(
                            catagory[index],
                            style: const TextStyle(
                                color: white,
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          })),
    ),
  );
}

circularindicator() {
  return const Center(
    child: CircularProgressIndicator(
        backgroundColor: blue,
        valueColor: AlwaysStoppedAnimation<Color>(purp)),
  );
}
