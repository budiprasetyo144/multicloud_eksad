import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../text/text_body.dart';
import 'package:url_launcher/url_launcher.dart';

class SmallHome7_news extends StatefulWidget {
  const SmallHome7_news({Key? key}) : super(key: key);

  @override
  State<SmallHome7_news> createState() => _SmallHome7_newsState();
}

class _SmallHome7_newsState extends State<SmallHome7_news> {
  void launchNews({
    required String WebsiteUrl,
  }) async {
    String url() {
      return WebsiteUrl;
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw 'Could not launch ${url()}';
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      height: 850,
      width: screenSize.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 29, 59, 189),
              borderRadius: BorderRadius.circular(30),
            ),
            width: screenSize.width * 0.95,
            height: 200,
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/eksad.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  width: screenSize.width*0.5,
                  height: 200,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 55,
                        width: screenSize.width * 0.47,
                        padding: EdgeInsets.only(left:5,top: 5,right: 15),

                        child: Text('Top Performing Partner of the year',
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 17),
                            textAlign: TextAlign.center),
                      ),
                      Container(
                        width: screenSize.width,
                        height: 92,
                        padding: EdgeInsets.only(left: 5,right: 5,top: 7),
                        child: Text(row1,
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 14,
                                height: 1.2,
                                letterSpacing: 1.2),
                            textAlign: TextAlign.center),
                      ),
                      TextButton(
                          onPressed: () {
                            launchNews(
                                WebsiteUrl:
                                'https://www.linkedin.com/feed/update/urn:li:share:6938149543133802497?utm_source=linkedin_share&utm_medium=member_desktop_share&utm_content=post');
                          },
                          child: const Text(
                            'READ MORE',
                            style: TextStyle(
                                fontSize: 13,
                                decoration: TextDecoration.underline,
                                color: Colors.white),
                          ))
                    ],
                  ),
                ),

              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(30),
            ),
            width: screenSize.width * 0.95,
            height: 200,
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/news2.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  width: screenSize.width*0.5,
                  height: 200,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 55,
                        width: screenSize.width * 0.45,
                        padding: EdgeInsets.only(left: 5,top: 5,right: 10),
                        child: Text(
                          'Cloud Demand in Indonesia is Predicted to Continue to Increase',
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontSize: 17,),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: screenSize.width,
                        height: 87,
                        padding: EdgeInsets.only(left: 5,right: 5,top: 7),
                        child: Text(row2,
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 14,
                                height: 1.2,
                                letterSpacing: 1.2),
                            textAlign: TextAlign.center),
                      ),
                      TextButton(
                          onPressed: () {
                            launchNews(
                                WebsiteUrl:
                                "https://inet.detik.com/business/d-6219553/kebutuhan-cloud-di-indonesia-diprediksi-terus-melesat");
                          },
                          child: const Text(
                            'READ MORE',
                            style: TextStyle(
                                fontSize: 13,
                                decoration: TextDecoration.underline,
                                color: Colors.black),
                          ))
                    ],
                  ),
                ),

              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 29, 59, 189),
              borderRadius: BorderRadius.circular(30),
            ),
            width: screenSize.width *0.9,
            height: 200,
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/news3.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  width: screenSize.width*0.5,
                  height: 200,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 55,
                        width: screenSize.width * 0.45,
                        padding: EdgeInsets.only(left: 25,top: 5,right: 25),
                        child: Text('Advancing Indonesia’s clouds',
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 17),
                            textAlign: TextAlign.center),
                      ),
                      Container(
                        width: screenSize.width,
                        height: 87,
                        padding: EdgeInsets.only(left: 6,right: 6,top: 7),
                        child: Text(row3,
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 13,
                                height: 1.2,
                                letterSpacing: 1.2),
                            textAlign: TextAlign.center),
                      ),
                      TextButton(
                          onPressed: () {
                            launchNews(
                                WebsiteUrl:
                                'https://www.thejakartapost.com/front-row/2022/05/23/advancing-indonesias-cloud-and-data-center-services.html');
                          },
                          child: const Text(
                            'READ MORE',
                            style: TextStyle(
                                fontSize: 13,
                                decoration: TextDecoration.underline,
                                color: Colors.white),
                          ))
                    ],
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
