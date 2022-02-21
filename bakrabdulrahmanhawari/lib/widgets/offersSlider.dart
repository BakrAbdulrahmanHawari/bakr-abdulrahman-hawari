import 'package:flutter/material.dart';

class OffersSlider extends StatelessWidget {
  const OffersSlider({
    Key? key,
    required this.imgList,
  }) : super(key: key);

  final List<String> imgList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          primary: false,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Image.network(
                      imgList[index],
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    color: Colors.white.withOpacity(0.5),
                    width: MediaQuery.of(context).size.width,
                    height: 27,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          " AED 300/-",
                          style: TextStyle(
                              color: Color(0xff4F4B4B),
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            const Text(
                              " AED 600/",
                              style: TextStyle(
                                  color: Color(0xff8C8C8C),
                                  decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 5, right: 10, left: 10),
                              child: Container(
                                  width: 50,
                                  child: const Center(
                                      child: Text(
                                    "50% off",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  )),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffFF7000),
                                      borderRadius: BorderRadius.circular(5))),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
