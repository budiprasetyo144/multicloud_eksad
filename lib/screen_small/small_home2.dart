import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_cloudv3/const/conts.dart';

class SmallHome2 extends StatelessWidget {
  const SmallHome2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width * 0.5,
      height: screenSize.height*0.8,
      padding: EdgeInsets.only(
        left: screenSize.width * 0.05,
        right: screenSize.width * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            // padding: const EdgeInsets.only(top: 10),
            width: screenSize.width,
            height: 70,
            child: Text('\nHow do we help?',
                style: GoogleFonts.poppins(
                    fontSize: 25,
                    color: const Color.fromARGB(255, 12, 66, 101),
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            width: screenSize.width,
            height: 100,
            child: Text(
                '\nWe are a one-stop Cloud service provider for world-class '
                    'Cloud services with diverse options which range from Cloud consulting '
                    'services to data center migration services. Besides, we can also seamlessly '
                    'scale and migrate your chosen application workloads.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    fontSize: 14, letterSpacing: 1.1, height: 1.4)),
          ),
          Container(
            width: screenSize.width,
            height: 275,
            child: Text(
                '\nInstead of operating within the constraints of a single cloud vendor,'
                    ' a multi-cloud strategy allows you to access the cloud services from '
                    'multiple cloud providers simultaneously. These cloud providers include Alibaba Cloud,  '
                    'AWS, Azure, Google Cloud or Huawei Cloud. Using the wide range of leading-edge services '
                    'available from these providers on a single data set, attached to all clouds simultaneously, can boost'
                    ' innovation and grow your business faster than if your data was locked into a single cloud.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    fontSize: 14, letterSpacing: 1.1, height: 1.4)),
          ),
        ],
      ),
    );
  }
}
