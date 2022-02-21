// ignore_for_file: sized_box_for_whitespace

import 'package:bakrabdulrahmanhawari/widgets/bestTitleGridView.dart';
import 'package:bakrabdulrahmanhawari/widgets/bottomNavBar.dart';
import 'package:bakrabdulrahmanhawari/widgets/categories.dart';
import 'package:bakrabdulrahmanhawari/widgets/footer.dart';
import 'package:bakrabdulrahmanhawari/widgets/offersSlider.dart';
import 'package:bakrabdulrahmanhawari/widgets/topTitle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  final List<String> footer = [
    'TERM OF USE',
    'CONTACT',
    'CAREER',
    'AREA RANGE'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: const Color(0xffFAFAFA),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Image.asset(
            'images/logo.PNG',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
            child: Container(
              width: 250,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    width: 125,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  Image.asset(
                    'images/headphone.PNG',
                    width: 37,
                    height: 37,
                  ),
                  Image.asset(
                    'images/time.PNG',
                    width: 37,
                    height: 37,
                  ),
                  Image.asset(
                    'images/code.PNG',
                    width: 37,
                    height: 37,
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: const Color(0xffF5F5F5),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40,
                child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    primary: false,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Center(
                          child: Text(
                            "HEAD TIL ${index + 1}",
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ),
                      );
                    }),
              ),
              OffersSlider(imgList: imgList),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    " Best practice definetion & Meaning",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                        width: 100,
                        height: 27,
                        child: const Center(
                            child: Text(
                          "SHOP",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )),
                        decoration: BoxDecoration(
                            color: const Color(0xff1492E6),
                            borderRadius: BorderRadius.circular(5))),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Categories(),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    " #BEST TITLE",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              BestTitleGridView(imgList: imgList),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    " #TOP TITLE",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              const TopTitle(),
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        " #SHOP BY CATEGORY",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        " View All  ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Container(
                height: 80,
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: 2,
                    shrinkWrap: true,
                    primary: false,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xff0078B2),
                              radius: 25,
                              child: Image.asset(
                                'images/categoryblue.PNG',
                                height: 30,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Center(
                                child: Text(
                                  "Sub Category",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              Container(
                height: 230,
                color: Colors.white,
                child: ListView.builder(
                    itemCount: 4,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext ctx, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1.0),
                        child: Container(
                            width: 118,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Center(
                                        child: Image.network(
                                          index == 0 ? imgList[1] : imgList[2],
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      child: Container(
                                        //     color: Colors.white.withOpacity(0.5),
                                        width: 120,
                                        height: 20,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            ListView.builder(
                                                itemCount: 3,
                                                shrinkWrap: true,
                                                primary: false,
                                                physics:
                                                    const BouncingScrollPhysics(),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index) {
                                                  return const Icon(
                                                    Icons.star,
                                                    size: 14,
                                                    color: Color(
                                                      0xffFFA400,
                                                    ),
                                                  );
                                                }),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 2),
                                              child: Container(
                                                  width: 30,
                                                  child: const Center(
                                                      child: Text(
                                                    "3 km",
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12),
                                                  )),
                                                  decoration: BoxDecoration(
                                                      color: Colors.black
                                                          .withOpacity(0.6),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5))),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        top: 2,
                                        right: 2,
                                        child: Image.asset('images/heart.png',
                                            width: 20, color: Colors.grey)),
                                  ],
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Visibility(
                                  visible: index == 0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(' 00.00/-',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              decoration:
                                                  TextDecoration.lineThrough)),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 2),
                                        child: Container(
                                            width: 40,
                                            child: const Center(
                                                child: Text(
                                              "00%",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
                                            )),
                                            decoration: BoxDecoration(
                                                color: const Color(0xffFFA400),
                                                borderRadius:
                                                    BorderRadius.circular(5))),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: const Text(' 00.00/-',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 3.0),
                                  child: const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Product Service',
                                        style: const TextStyle(
                                          color: Colors.black,
                                        )),
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 3.0),
                                  child: const Align(
                                    alignment: Alignment.centerLeft,
                                    child: const Text('Title Product',
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                  ),
                                ),
                                Visibility(
                                  visible: index != 0,
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 3.0),
                                    child: const Align(
                                      alignment: Alignment.centerLeft,
                                      child: const Text('Service Title',
                                          style: TextStyle(
                                            color: Colors.black,
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      );
                    }),
              ),
              const SizedBox(
                height: 2,
              ),
              Footer(footer: footer),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
