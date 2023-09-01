import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<Map<String, dynamic>> imagelist = [
    {
      'image': "assets/image/orenge.png",
      'name': "LEMON",
      'name1': "Fresg juicy orenge"
    },
    {
      'image': "assets/image/pineapple.png",
      'name': "PINEAPPLE",
      'name1': "Sour pineapple"
    },
    {
      'image': "assets/image/kiwi.png",
      'name': "KIWI FRESH",
      'name1': "Beauti Kiwi"
    },
    {
      'image': "assets/image/orenge.png",
      'name': "LEMON",
      'name1': "Fresg juicy orenge"
    },
    {
      'image': "assets/image/pineapple.png",
      'name': "PINEAPPLE",
      'name1': "Sour pineapple"
    },
    {
      'image': "assets/image/kiwi.png",
      'name': "KIWI FRESH",
      'name1': "Beauti Kiwi"
    },
    {
      'image': "assets/image/orenge.png",
      'name': "LEMON",
      'name1': "Fresg juicy orenge"
    },
    {
      'image': "assets/image/pineapple.png",
      'name': "PINEAPPLE",
      'name1': "Sour pineapple"
    },
    {
      'image': "assets/image/kiwi.png",
      'name': "KIWI FRESH",
      'name1': "Beauti Kiwi"
    },
  ];

  List<Map<String, dynamic>> list = [
    {
      'image': "assets/image/1.png",
      'name': "U.S.A",
      'name2': "Selected Bacon",
      'name3': "Black park",
      'prise': "\$57,888",
      'color': Color(0xffF59230)
    },
    {
      'image': "assets/image/2.png",
      'name': "U.S.A",
      'name2': "Pork sausage",
      'name3': "Black park",
      'prise': "\$20,000",
      'color': Color(0xffFFD645)
    },
    {
      'image': "assets/image/3.png",
      'name': "U.S.A",
      'name2': "mutton",
      'name3': "Black park",
      'prise': "\$10,499",
      'color': Color(0xffF29138)
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 320,
                  width: 365,
                  margin: EdgeInsets.only(bottom: 40),
                  decoration: BoxDecoration(
                    color: Color(0xffFFA824),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.elliptical(250, 180),
                        bottomLeft: Radius.elliptical(250, 80)),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 50, right: 20),
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
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 5))),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              Icon(
                                Icons.account_circle_outlined,
                                color: Colors.white,
                                size: 27,
                              ),
                            ]),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            Text("Browse",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -10,
                  child: Container(
                    height: 200,
                    width: 365,
                    //    color: Colors.black12,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imagelist.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 5),
                                height: 160,
                                width: 125,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, bottom: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            imagelist[index]["name"],
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            imagelist[index]["name1"],
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey.shade400),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: -3,
                              child: Column(
                                children: [
                                  Image.asset(
                                    imagelist[index]["image"],
                                    width: 100,
                                    height: 100,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 18,
                        color: Color(0xffFFA824),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Saved",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "16",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 15),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Items",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 365,
              height: 350,
              color: Colors.grey.shade200,
              child: ListView.builder(
                itemCount: imagelist.length,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 100,
                    width: 320,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: list[index]["color"]),
                            child: Image.asset(list[index]["image"]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(list[index]["name"],
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black54)),
                                Text(
                                  list[index]["name2"],
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                SizedBox(height: 18),
                                Row(
                                  children: [
                                    Text(list[index]["name3"],
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey.shade700)),
                                    SizedBox(width: 18),
                                    Text(list[index]["prise"],
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey.shade700)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xffFFE8D1),
                                  child: Icon(Icons.favorite,
                                      size: 18, color: Color(0xffFFA81C)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
