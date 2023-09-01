import 'package:flutter/material.dart';
import 'package:fruit_chiken/common_widgets.dart';
import 'package:fruit_chiken/container.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<Map<String, dynamic>> imagelist = [
    {
      'image': "assets/image/cucumber.png",
      'name': "U.S.A",
      'name2': "Find Cucumber",
      'name3': "\$10,000"
    },
    {
      'image': "assets/image/cucumber.png",
      'name': "U.S.A",
      'name2': "Find Cucumber",
      'name3': "\$10,000"
    },
    {
      'image': "assets/image/cucumber.png",
      'name': "U.S.A",
      'name2': "Find Cucumber",
      'name3': "\$10,000"
    },
  ];

  List<Map<String, dynamic>> list = [
    {
      'name': "Fresh",
    },
    {
      'name': "Jucy",
    },
    {'name': "Greeen plants"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Container(
            height: 700,
            // color: Colors.red.shade200,
            width: 360,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 440,
                  width: 365,
                  decoration: BoxDecoration(
                    color: Color(0xffFFA824),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.elliptical(180, 40),
                        bottomLeft: Radius.elliptical(180, 50)),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 80, right: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.menu,
                              size: 28,
                              color: Colors.white,
                            ),
                            Container(
                              height: 40,
                              width: 215,
                              child: TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.search,
                                          size: 20,
                                          color: Colors.grey.shade300),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      hintText: 'Search',
                                      hintStyle: TextStyle(
                                          color: Colors.grey.shade300,
                                          fontSize: 15),
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 5))),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Icon(
                              Icons.account_circle_outlined,
                              color: Colors.white,
                              size: 27,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("FIND",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300)),
                                SizedBox(height: 4),
                                Text("Porsche 911",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w400)),
                                SizedBox(height: 4),
                                Container(
                                  height: 2,
                                  width: 135,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 20),
                                Text("SORT BY",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300)),
                                SizedBox(height: 5),
                                Text("Price,Low to High",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w400)),
                                SizedBox(height: 4),
                                Container(
                                  height: 2,
                                  width: 195,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 360,
                    width: 365,
                    //  color: Colors.black12,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imagelist.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                height: 350,
                                width: 310,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Column(children: [
                                  Container(
                                    height: 200,
                                    width: 310,
                                    decoration: BoxDecoration(
                                        color: Colors.black45,
                                        image: DecorationImage(
                                            image: AssetImage(
                                              imagelist[index]["image"],
                                            ),
                                            fit: BoxFit.fill),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 13.5, right: 20),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              imagelist[index]["name"],
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.grey.shade500,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              imagelist[index]["name2"],
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              imagelist[index]["name3"],
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: List.generate(
                                            3,
                                            (index) => Row(
                                              children: [
                                                Container(
                                                  width: 81,
                                                  height: 30,
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 15,
                                                      horizontal: 4.5),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: Color(0xffFFE8D1),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                        list[index]["name"],
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xffFFA81C),
                                                            fontSize: 12)),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                              ),
                              Positioned(
                                bottom: 135,
                                right: 20,
                                child: CircleAvatar(
                                  maxRadius: 25,
                                  backgroundColor: Color(0xffFF8D21),
                                  child: Icon(Icons.favorite_border,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
