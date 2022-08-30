import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_cloudv3/animation/animasi_kiri_kanan.dart';
import 'package:multi_cloudv3/animation/animasi_kanan_kiri.dart';
import 'package:show_up_animation/show_up_animation.dart';

class SmallHome4_solution extends StatelessWidget {
  const SmallHome4_solution({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.height * 1.1,
      width: screenSize.width,
      color: Colors.grey[200],
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text("Why Choose Us?",
                style: GoogleFonts.poppins(
                    fontSize: 29,
                    color: const Color(0xff1e5ea8),
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenSize.width * 0.4,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: screenSize.height * 0.01),
                      width: screenSize.width * 0.5,
                      child: ShowUpAnimation(
                        delayStart: const Duration(seconds: 2),
                        curve: Curves.bounceIn,
                        direction: Direction.horizontal,
                        offset: -0.2,
                        child: Image.asset(
                          "assets/icons/icon1.png",
                          height: screenSize.height * 0.1,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: ShowUpAnimation(
                        delayStart: const Duration(seconds: 2),
                        direction: Direction.horizontal,
                        child: Text(
                          "MIGRATION",
                          style: GoogleFonts.poppins(
                            color: const Color(0xff1e5ea8),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 270,
                      height: 170,
                      child: ShowUpAnimation(
                        delayStart: const Duration(seconds: 2),
                        direction: Direction.horizontal,
                        child: Text(
                          "We Experience in Data Migration Multi Cloud, Migration from Premise Environment.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: const Color(0xff111111),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: screenSize.width * 0.4,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: screenSize.height * 0.01),
                      width: screenSize.width * 0.5,
                      child: ShowUpAnimation(
                        delayStart: const Duration(seconds: 2),
                        curve: Curves.bounceIn,
                        direction: Direction.horizontal,
                        offset: -0.2,
                        child: Image.asset(
                          "assets/icons/icon2.png",
                          height: screenSize.height * 0.1,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: ShowUpAnimation(
                        delayStart: const Duration(seconds: 2),
                        direction: Direction.horizontal,
                        child: Text(
                          "CONSULTING",
                          style: GoogleFonts.poppins(
                            color: const Color(0xff1e5ea8),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 270,
                      height: 170,
                      child: ShowUpAnimation(
                        delayStart: const Duration(seconds: 2),
                        direction: Direction.horizontal,
                        child: Text(
                          "Our experienced Cloud Consultants can help you determine the efficacy of and implement these popular cloud solutions.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: const Color(0xff111111),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenSize.width * 0.4,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: screenSize.height * 0.01),
                      width: screenSize.width * 0.5,
                      child: ShowUpAnimation(
                        delayStart: const Duration(seconds: 2),
                        curve: Curves.bounceIn,
                        direction: Direction.horizontal,
                        offset: -0.2,
                        child: Image.asset(
                          "assets/icons/icon3.png",
                          height: screenSize.height * 0.1,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: ShowUpAnimation(
                        delayStart: const Duration(seconds: 2),
                        direction: Direction.horizontal,
                        child: Text(
                          "LOCAL SUPPORT",
                          style: GoogleFonts.poppins(
                            color: const Color(0xff1e5ea8),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 260,
                      height: 130,
                      child: ShowUpAnimation(
                        delayStart: const Duration(seconds: 2),
                        direction: Direction.horizontal,
                        child: Text(
                          "Our local support team works with our clients every step of the way to ensure that their cloud is running smoothly.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: const Color(0xff111111),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: screenSize.width * 0.4,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: screenSize.height * 0.01),
                      width: screenSize.width * 0.5,
                      child: ShowUpAnimation(
                        delayStart: const Duration(seconds: 2),
                        curve: Curves.bounceIn,
                        direction: Direction.horizontal,
                        offset: -0.2,
                        child: Image.asset(
                          "assets/icons/icon4.png",
                          height: screenSize.height * 0.1,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: ShowUpAnimation(
                        delayStart: const Duration(seconds: 2),
                        direction: Direction.horizontal,
                        child: Text(
                          "IMPLEMENTATION",
                          style: GoogleFonts.poppins(
                            color: const Color(0xff1e5ea8),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 260,
                      height: 130,
                      child: ShowUpAnimation(
                        delayStart: const Duration(seconds: 2),
                        direction: Direction.horizontal,
                        child: Text(
                          "We do all cloud services such as Infrastructure  (IAAS), Platform (PAAS), and Software (SAAS).",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: const Color(0xff111111),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
