import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_cloudv3/const/conts.dart';

class Home6_advantages extends StatelessWidget {
  const Home6_advantages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromARGB(255, 227, 235, 253),
      height: 660,
      padding: const EdgeInsets.all(10),
      width: screenSize.width,
      child: Column(
        children: [
          const SizedBox(
            height: 15,
            width: 10,
          ),
          Center(
            child: Text("Why Multi Cloud Solutions",
                style: GoogleFonts.poppins(
                    fontSize: 27,
                    color: const Color.fromARGB(255, 12, 66, 101),
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 0, 70, 150)),
                height: 255,
                width: screenSize.width * 0.40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Efficiency Improvement",
                      style: GoogleFonts.poppins(
                          fontSize: 17, fontWeight: FontWeight.bold,color: Colors.white,),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: screenSize.width,
                      height: 175,
                      child: Text(
                        "Cloud technology eliminates all these hassles. Cloud storage providers have the necessary infrastructure to store your data. These providers also handle the security and maintenance for you! This means you can focus more on your core business instead of buying and maintaining storage devices. Simply use the space you want and pay only for what you use.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 1,
                            height: 1.4),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 0, 70, 150)),
                height: 255,
                width: screenSize.width * 0.40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Better Scalability",
                      style: GoogleFonts.poppins(
                          fontSize: 17, fontWeight: FontWeight.bold,color: Colors.white,),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: screenSize.width,
                      height: 175,
                      child: Text(
                        "The virtually limitless storage and compute resources available in the cloud give organizations the flexibility to scale up or down to address changing business situations. This flexibility enables a company to quickly grow to handle increased customer demand and save money by scaling down resource use when appropriate.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                        color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 1,
                            height: 1.4),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
            width: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 0, 70, 150)),
                height: 255,
                width: screenSize.width * 0.40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Agility & Adaptability",
                      style: GoogleFonts.poppins(
                          fontSize: 17, fontWeight: FontWeight.bold,color: Colors.white,),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: screenSize.width,
                      height: 175,
                      child: Text(
                        "Cloud services allow you to focus on important aspects of your business without having to worry about IT solutions. Relying on an external cloud computing company to manage your cloud infrastructure and host your data and applications will enable you to fully commit to achieving your business objectives.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                        color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 1,
                            height: 1.4),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 0, 70, 150)),
                height: 255,
                width: screenSize.width * 0.40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Faster Development Cycles",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: screenSize.width,
                      height: 175,
                      child: Text(
                        "The collaboration and efficiency possible with cloud platforms will often result in faster development cycles. This enables companies to take advantage of emerging trends and more efficiently address customer demands and expectations. In today???s competitive market, the ability to bring products to market promptly can be the difference between success and failure.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 1,
                            height: 1.4),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
                width: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
