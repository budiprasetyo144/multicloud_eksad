import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_cloudv3/api/setting_api.dart';
import 'package:multi_cloudv3/screen/footer.dart';
import 'package:url_launcher/url_launcher.dart';

class SmallFooter extends StatelessWidget {
  const SmallFooter({Key? key, required this.content1, required this.content2})
      : super(key: key);
  final Widget content1;
  final Widget content2;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: screenSize.width,
          height: screenSize.height*1.75,
          padding: EdgeInsets.symmetric(horizontal: screenSize.height*0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 15,),
              Center(
                child: Container(
                    padding: const EdgeInsets.only(left: 5),
                    width: screenSize.width,
                    height: screenSize.height * 0.232,
                    child: Column(
                      children: [
                        Container(
                          width: 110,
                          height: 50,
                          decoration: const BoxDecoration(
                            //color: Colors.lightBlueAccent,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/logo/multicloudsolution.jpg'),
                                  fit: BoxFit.fill)),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          width: 110,
                          height: 40,
                          decoration: const BoxDecoration(
                            //color: Colors.lightBlueAccent,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/logo/logo-eksad.png'),
                                  fit: BoxFit.fill)),
                        ),
                        const Spacer(),
                        Container(
                          width: screenSize.width,
                          height: screenSize.height * 0.04,
                          //color: Colors.blue,
                          child: Center(
                            child: Text(
                              '  Your one stop IT Solution.',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.3,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        Container(
                          width: screenSize.width * 0.6,
                          height: screenSize.height * 0.03,
                          //color: Colors.blue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ApiLinkedin(),
                              ApiTwitter(),
                              ApiInstagram(),
                              ApiYoutube()
                            ],
                          ),
                        ),
                        const Spacer(
                          flex: 2,
                        )
                      ],
                    )),
              ),
               SizedBox(height: 40,),
              Center(
                child: Container(
                    width: screenSize.width * 0.6,
                    height: screenSize.height * 0.4,
                    child: content1),
              ),
               SizedBox(height: 10,),
              Center(
                child: Container(
                    width: screenSize.width * 0.6,
                    height: screenSize.height * 0.4,
                    child: content2),
              ),
               SizedBox(height: 10,),
              Center(
                child: Container(
                    width: screenSize.width,
                    height: screenSize.height * 0.55,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                         // padding: EdgeInsets.only(left: 10),
                          width: screenSize.width,
                          height: screenSize.height * 0.08,
                          child: Center(child: FooterHeadSmall('Contact'),),
                        ),
                        Column(
                          children: [
                            TelphoneApiSmall(),
                            EmailAPISmall(),
                            // Container(
                            //   width: screenSize.width,
                            //   child: ListTile(
                            //     minLeadingWidth: 1,
                            //     leading: const Icon(
                            //       Icons.phone,
                            //       size: 19,
                            //       color: Colors.black,
                            //     ),
                            //     title: TextButton(
                            //         onPressed: () {
                            //           launch('tel:02157958040');
                            //         },
                            //         child: Text(
                            //           '(021) 5795 - 8040',
                            //           style: GoogleFonts.poppins(
                            //             fontSize: 13,
                            //             color: Colors.black87,
                            //           ),
                            //         )),
                            //   ),
                            // ),
                            // Container(
                            //   width: screenSize.width,
                            //
                            //   child: ListTile(
                            //     minLeadingWidth: 1,
                            //     leading: const Icon(
                            //       Icons.mail,
                            //       size: 19,
                            //       color: Colors.black,
                            //     ),
                            //     title: TextButton(
                            //       onPressed: () {
                            //         launch(
                            //             'mailto:Info@eksad.com?subject=Info MCS');
                            //       },
                            //       child: Text(
                            //         'info@eksad.com',
                            //         style: GoogleFonts.poppins(
                            //             fontSize: 13, color: Colors.black87,letterSpacing: 1.1),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                        Container(
                          width: screenSize.width,
                          height: screenSize.height * 0.25,
                          child: ListTile(
                              minLeadingWidth: 1,
                              leading: const Icon(
                                Icons.location_on,
                                size: 24,
                                color: Colors.black,
                              ),
                              title: Container(
                                width: screenSize.width,
                                height: screenSize.height * 0.25,
                                child: Text(
                                  'PT. Tiga Daya Digital Indonesia \nThe East '
                                      'Tower 19th Floor \nJl. Dr. Ide Anak Agung '
                                      '\nGde Agung Blok E3.2 '
                                      '\nMega Kuningan, \nJakarta Selatan 12950',
                                  style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      height: 1.45,
                                      letterSpacing: 1.1
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ),


                      ],
                    )),
              ),

            ],
          ),
        ),
        const Divider(
          height: 3,
          thickness: 3,
        ),
        Container(
          width: screenSize.width,
          height: screenSize.height * 0.1,
          child: Center(
              child: Text(
                'PT. Tiga Daya Digital Indonesia © 2018, \nAll Rights Reserved.',
                style: GoogleFonts.poppins(
                    letterSpacing: 1.3, height: 1.4, fontSize: 12),
                textAlign: TextAlign.center,
              )),
        )
      ],
    );
  }

  Text FooterHeadSmall(String title) => Text(
    title,
    style: GoogleFonts.poppins(
        fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 2),
  );
}

class FooterBodySmall extends StatelessWidget {
  FooterBodySmall({Key? key, required this.teks}) : super(key: key);
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Text(
      teks,
      style: GoogleFonts.poppins(
          color: const Color.fromARGB(255, 5, 22, 93),
          fontSize: 16,
          letterSpacing: 1.2),
    );
  }
}

void _launchLinkedIn() async {
  String url() {
    return "https://www.linkedin.com/company/pt-tiga-daya-digital-indonesia-triputra-group-eksad-technology";
  }

  if (await canLaunch(url())) {
    await launch(url());
  } else {
    throw 'Could not launch ${url()}';
  }
}

void _launchTwitter() async {
  String url() {
    return "https://twitter.com/eksad_technology/";
  }

  if (await canLaunch(url())) {
    await launch(url());
  } else {
    throw 'Could not launch ${url()}';
  }
}

void _launchInstagram() async {
  String url() {
    return "https://www.instagram.com/eksad_technology/";
  }

  if (await canLaunch(url())) {
    await launch(url());
  } else {
    throw 'Could not launch ${url()}';
  }
}

void _launchYoutube() async {
  String url() {
    return "https://youtube.com/eksad_technology";
  }

  if (await canLaunch(url())) {
    await launch(url());
  } else {
    throw 'Could not launch ${url()}';
  }
}

class TelphoneApiSmall extends StatefulWidget {
  const TelphoneApiSmall({Key? key}) : super(key: key);

  @override
  State<TelphoneApiSmall> createState() => _TelphoneApiSmallState();
}

class _TelphoneApiSmallState extends State<TelphoneApiSmall> {
  String no = '';
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return FutureBuilder<List<dynamic>>(
      future: getSettingDesc(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        var pgm = snapshot.data[0];
        if (snapshot.hasError ||
            snapshot.data == null ||
            snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        return Container(
          width: screenSize.width,
          child: ListTile(
            minLeadingWidth: 1,
            leading: const Icon(
              Icons.phone,
              size: 19,
              color: Colors.black,
            ),
            title: TextButton(
                onPressed: () {
                  no = pgm['no'];
                  //02157958040
                  launch('tel:$no');
                },
                child: Text(
                  pgm['no'],
                  style: GoogleFonts.poppins(
                      fontSize: 15, color: Colors.black87,letterSpacing: 1.2),
                )),
          ),

        );
      },
    );
  }
}

class EmailAPISmall extends StatefulWidget {
  const EmailAPISmall({Key? key}) : super(key: key);

  @override
  State<EmailAPISmall> createState() => _EmailAPISmallState();
}

class _EmailAPISmallState extends State<EmailAPISmall> {
  String email = '';
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return FutureBuilder<List<dynamic>>(
      future: getSettingDesc(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        var pgm = snapshot.data[0];
        if (snapshot.hasError ||
            // snapshot.data == null ||
            snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        return Container(
          width: screenSize.width,
          child: ListTile(
            minLeadingWidth: 1,
            leading: const Icon(
              Icons.mail,
              size: 19,
              color: Colors.black,
            ),
            title: TextButton(
                onPressed: () {
                  email = pgm['email'];
                  launch('mailto:$email?subject=Info MCS');
                },
                // child: SettingAPI(),
                child: Text(
                  pgm['email'],
                  style: GoogleFonts.poppins(
                      fontSize: 15, color: Colors.black87,letterSpacing: 1.2),
                )),
          ),
        );
      },
    );
  }
}

