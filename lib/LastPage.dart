import 'package:flutter/material.dart';

import 'globals.dart';

class Last_Page extends StatefulWidget {
  const Last_Page({Key? key}) : super(key: key);

  @override
  State<Last_Page> createState() => _Last_PageState();
}

class _Last_PageState extends State<Last_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: 840,
              child: Column(
                children: [
                  Container(
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:  NetworkImage(
                            'https://w0.peakpx.com/wallpaper/470/139/HD-wallpaper-elephant-all-animals-colors-nature-phone-screen-sunset.jpg'),
                        fit: BoxFit.fill,
                        filterQuality: FilterQuality.high,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2),
                          BlendMode.colorBurn,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "aplanet",
                                    style: TextStyle(
                                      color: Color(0xffe6c7ab),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                  Text(
                                    "We love the planet",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.menu,
                                color: Colors.white,
                                size: 35,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Center(
                          child: Text(
                            "Welcome  To\nNew Aplanet",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xffc19e81),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
              ),
              padding: const EdgeInsets.only(left: 20),
              height: 470,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Related for you",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...Global.ByDefalt
                            .map(
                              (e) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        Navigator.of(context)
                                            .pushNamed('/', arguments: e);
                                      });
                                    },
                                    child: Ink(
                                      child: Container(
                                        margin: const EdgeInsets.all(10),
                                        height: 200,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.brown.shade200,
                                          boxShadow: [
                                            BoxShadow(
                                              offset: const Offset(0, 0),
                                              color: Colors.brown.shade900,
                                              blurRadius: 8,
                                              spreadRadius: 2,
                                            ),
                                          ],
                                          borderRadius: BorderRadius.circular(8),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "${e["image"]}",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "${e["FirstLine"]}",
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "${e['SecondLine']}",

                                    style: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                        const SizedBox(width: 5),
                      ],
                    ),
                  ),
                  const Text(
                    "Quick categories",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...Global.categories
                          .map(
                            (e) => Column(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffe1c6a7),
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(e['image']),
                                      scale: 2,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  e['animal'],
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    letterSpacing: 2,
                                  ),
                                ),
                              ],
                            ),
                          )
                          .toList(),
                      const SizedBox(width: 1),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
