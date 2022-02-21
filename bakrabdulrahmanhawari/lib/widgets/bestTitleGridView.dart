import 'package:flutter/material.dart';

class BestTitleGridView extends StatelessWidget {
  const BestTitleGridView({
    Key? key,
    required this.imgList,
  }) : super(key: key);

  final List<String> imgList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2 / 4,
            crossAxisCount: 3,
            crossAxisSpacing: 1,
            mainAxisSpacing: 5),
        itemCount: 9,
        primary: false,
        shrinkWrap: true,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
              color: Colors.white,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Image.network(
                            imgList[1],
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 4.26,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 32,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ListView.builder(
                                  itemCount: 3,
                                  shrinkWrap: true,
                                  primary: false,
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return const Icon(
                                      Icons.star,
                                      size: 14,
                                      color: const Color(
                                        0xffFFA400,
                                      ),
                                    );
                                  }),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: MediaQuery.of(context).size.width /
                                        180),
                                child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 12,
                                    child: const Center(
                                        child: Text(
                                      "3 km",
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )),
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6),
                                        borderRadius:
                                            BorderRadius.circular(5))),
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 320,
                  ),
                  Visibility(
                    visible: index % 2 == 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(' 00.00/-',
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough)),
                        Padding(
                          padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width / 180),
                          child: Container(
                              width: MediaQuery.of(context).size.width / 9,
                              child: const Center(
                                  child: Text(
                                "00%",
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )),
                              decoration: BoxDecoration(
                                  color: const Color(0xffFFA400),
                                  borderRadius: BorderRadius.circular(5))),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(' 00.00/-',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Product Service',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Title Product',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                    ),
                  ),
                ],
              ));
        });
  }
}
