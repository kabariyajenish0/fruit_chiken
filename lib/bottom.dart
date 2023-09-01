import 'package:flutter/material.dart';
import 'package:fruit_chiken/page1.dart';
import 'package:fruit_chiken/page2.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int selectindex = 0;
  List screen = [Page1(), Page2(), Center(child: Text("Personal Details"))];
  List icons = [Icons.browse_gallery_outlined, Icons.search, Icons.person_pin];
  List name = ["Browse", "Search", "Person"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.orange.shade200,
      body: screen[selectindex],
      // body: screen[selectindex],
      // bottomNavigationBar: BottomNavigationBar(
      //     onTap: (value) {
      //       setState(() {
      //         selectindex = value;
      //       });
      //     },
      //     currentIndex: selectindex,
      //     fixedColor: Colors.black,
      //     type: BottomNavigationBarType.fixed,
      //     elevation: 50,
      //     selectedLabelStyle:
      //         TextStyle(height: 2, fontSize: 12, fontWeight: FontWeight.bold),
      //     backgroundColor: Colors.white,
      //     unselectedIconTheme: IconThemeData(color: Colors.black12),
      //     selectedIconTheme: IconThemeData(color: Colors.black),
      //     items: [
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.browse_gallery_outlined), label: "Browse"),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.search_rounded), label: "Search"),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.account_circle_outlined), label: "Account"),
      //     ]),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: List.generate(
            3,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectindex = index;
                });
              },
              child: Container(
                height: 40,
                width: 110,
                margin: EdgeInsets.symmetric(horizontal: 5),
                // color: Colors.black,
                child: selectindex == index
                    ? Container(
                        // height: 40,
                        // width: 110,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade50,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                icons[index],
                                color: Colors.orange,
                              ),
                              Text(
                                name[index],
                                style: TextStyle(color: Colors.orange),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        // height: 40,
                        // width: 100,
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                icons[index],
                                color: Colors.grey,
                              ),
                              Text(
                                name[index],
                                style: TextStyle(color: Colors.transparent),
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
