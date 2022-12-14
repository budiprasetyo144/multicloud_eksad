import 'package:flutter/material.dart';
import 'package:multi_cloudv3/dashboard/dashboard.dart';
import 'package:multi_cloudv3/screen/footer.dart';
import 'package:multi_cloudv3/widget/responsive.dart';
import 'package:multi_cloudv3/screen/appbar.dart';
import 'package:multi_cloudv3/text/text_post.dart';
import 'package:multi_cloudv3/main.dart';

class PostBody extends StatelessWidget {
  final String Imagez;
  final String HeadText;
  final String Tanggal;
  final String Bodyfull;
  final String Urutan;
  const PostBody({
    Key? key,
    required this.Imagez,
    required this.HeadText,
    required this.Tanggal,
    required this.Bodyfull,
    required this.Urutan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppbarSmallSize(screenSize)
          : PreferredSize(
              preferredSize: Size(screenSize.width, 110),
              child: Row(
                children: [
                  SizedBox(
                    width: screenSize.width * 0.02,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 30, top: 20, bottom: 20),
                    child: Image.asset("assets/logo/multicloudsolution.jpg"),
                  ),
                  const Spacer(
                    flex: 7,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Dashboard(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.brightness_low_sharp,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
      body: ListView(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 70, right: 70),
            controller: ScrollController(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 3),
                  height: 90,
                  child: Row(
                    children: [
                      SizedBox(
                          height: 20,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MyApp(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Home',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 17),
                              ))),
                      Container(
                        padding: const EdgeInsets.only(top: 1),
                        height: 20,
                        child: const Text(
                          ' > ',
                          style: TextStyle(color: Colors.red, fontSize: 17),
                        ),
                      ),
                      Container(
                        height: 20,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/news');
                          },
                          child: const Text(
                            'News',
                            style: TextStyle(color: Colors.red, fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 1),
                        height: 20,
                        child: const Text(
                          ' >  ',
                          style: TextStyle(color: Colors.red, fontSize: 17),
                        ),
                      ),
                      Container(
                        height: 20,
                        child: Text(
                          Urutan,
                          style:
                              const TextStyle(color: Colors.red, fontSize: 17),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Imagez), fit: BoxFit.cover),
                  ),
                  height: 450,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 19),
                  child: Text(
                    HeadText,
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(200, 4, 4, 52),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    Tanggal,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 19),
                  child: Text(
                    Bodyfull,
                    style: const TextStyle(fontSize: 20, height: 1.5),
                  ),
                ),
              ],
            ),
          ),
          Footer(
            content1: Container(),
            content2: Container(),
          ),
        ],
      ),
    );
  }
}
