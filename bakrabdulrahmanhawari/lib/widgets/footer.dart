import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
    required this.footer,
  }) : super(key: key);

  final List<String> footer;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 40,
            child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                primary: false,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Text(
                        "${footer[index]}",
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    Image.asset(
                      'images/greylogo.PNG',
                      width: 60,
                    )
                  ],
                ),
              ),
              const Text(
                "PROJECT BY",
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "EZENESS TECHNOLOGY",
                style: const TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
