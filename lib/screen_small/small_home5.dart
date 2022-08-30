import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_cloudv3/widget/expansion_small.dart';



class SmallHome5_industry extends StatefulWidget {
  const SmallHome5_industry({Key? key}) : super(key: key);

  @override
  State<SmallHome5_industry> createState() => _SmallHome5_industryState();
}

class _SmallHome5_industryState extends State<SmallHome5_industry> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height*1.9,
      width: screenSize.width,
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Container(
            width: screenSize.width*0.9,

            padding: EdgeInsets.symmetric(horizontal: screenSize.width*0.05),
            child: Text(
              "VARIOUS INDUSTRY AND SECTORS",
              style: GoogleFonts.poppins(
                fontSize: 28,
                color: const Color(0xff1e5ea8),
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.08, vertical: 20),
            child: Text(
              'Each industry has a unique request. We are ready to assist and provide specific requirements based on the client\'s needs, from the first discussion to providing expert consultants.',
              style: GoogleFonts.poppins(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: screenSize.width * 0.93,
            child: Expansionpanel_small(),
          ),
        ],
      ),
    );
  }
}
