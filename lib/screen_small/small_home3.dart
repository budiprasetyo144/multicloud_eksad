import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:show_up_animation/show_up_animation.dart';

class SmallHome3_partner extends StatelessWidget {
  const SmallHome3_partner({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height*1.22 ,
      width: screenSize.width,
      //color: Color.fromARGB(255, 0, 36, 192),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: screenSize.width,
            height: screenSize.height * 0.22,
            color: const Color.fromARGB(255, 12, 94, 149),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "Strategic Partnerships",
                    style: GoogleFonts.robotoCondensed(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Container(
                    width: screenSize.width,
                    height: screenSize.height*0.12,
                    //color: Colors.white,
                    padding: EdgeInsets.only(left: screenSize.width*0.05,right: screenSize.width*0.05),
                    child: Text(
                      "Our expertise and experience in dealing with the leading public cloud platforms make us a perfect choice for your business:",
                      style: GoogleFonts.robotoCondensed(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.1,height: 1.3),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height ,
            width: screenSize.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(
                  width: screenSize.width * 0.4,
                  height: 120,
                  child: ShowUpAnimation(
                    delayStart: const Duration(seconds: 1),
                    curve: Curves.bounceIn,
                    offset: -0.2,
                    direction: Direction.horizontal,
                    child: Image(
                      image: AssetImage('assets/logo/alibaba.png'),
                      height: 120,
                      width: 148,
                    ),
                  ),
                ),

                // BARIS 2
                SizedBox(
                  width: screenSize.width * 0.4,
                  height: 120,
                  child: ShowUpAnimation(
                    delayStart: const Duration(seconds: 2),
                    direction: Direction.horizontal,
                    child: Image(
                      image: AssetImage('assets/logo/googlecloud.png'),
                      height: 120,
                      width: 148,
                    ),
                  ),
                ),

                SizedBox(
                  width: screenSize.width * 0.4,
                  height: 120,
                  child: ShowUpAnimation(
                    delayStart: const Duration(seconds: 3),
                    curve: Curves.bounceIn,
                    offset: -0.2,
                    direction: Direction.horizontal,
                    child: Image(
                      image: AssetImage('assets/logo/huawei.png'),
                      height: 120,
                      width: 148,
                    ),
                  ),
                ),

                SizedBox(
                  width: screenSize.width * 0.4,
                  height: 120,
                  child: ShowUpAnimation(
                    delayStart: const Duration(seconds: 4),
                    direction: Direction.horizontal,
                    child: Image(
                      image: AssetImage('assets/logo/aws.png'),
                      height: 120,
                      width: 148,
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
