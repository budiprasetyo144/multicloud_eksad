import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_cloudv3/screen/footer.dart';
import 'package:multi_cloudv3/screen/home1.dart';
import 'package:multi_cloudv3/screen/home8.dart';
import 'package:multi_cloudv3/screen/home3_edit.dart';
import 'package:multi_cloudv3/screen/home4_edit.dart';

import 'package:multi_cloudv3/screen/home6_advantage.dart';
import 'package:multi_cloudv3/screen/home7_news.dart';
import 'package:multi_cloudv3/screen/home2.dart';
import 'package:multi_cloudv3/screen_small/small_footer.dart';
import 'package:multi_cloudv3/screen_small/small_home1.dart';
import 'package:multi_cloudv3/screen_small/small_home2.dart';
import 'package:multi_cloudv3/screen_small/small_home3.dart';
import 'package:multi_cloudv3/screen_small/small_home4.dart';
import 'package:multi_cloudv3/screen_small/small_home5.dart';
import 'package:multi_cloudv3/screen_small/small_home6.dart';
import 'package:multi_cloudv3/screen_small/small_home7.dart';
import 'package:multi_cloudv3/screen_small/small_home8.dart';
import 'package:multi_cloudv3/widget/whatsapp.dart';
import '../widget/responsive.dart';
import 'appbar.dart';
import 'home5.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //   Untuk pake PAGE per index
  PageController controller = PageController();
  void _scrollToIndex2(int index) {
    controller.animateToPage(index,
        duration: const Duration(seconds: 2),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  //   Untuk pake LIST per height container
  ScrollController controller2 = ScrollController();
  void _scrollToIndex(double index) {
    controller2.animateTo(index,
        duration: const Duration(seconds: 1),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  int selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppbarSmall(screenSize)
          : AppbarLarge(screenSize),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: WAChat(),
      drawer: _drawerWidget(),
      body: ResponsiveWidget.isSmallScreen(context)
          ? ListView(
              scrollDirection: Axis.vertical,
              controller: controller2,
              children: [
                SmallHome(wijet: Button_scroll_small()),
                const SmallHome2(),
                const SmallHome3_partner(),
                SmallHome4_solution(screenSize: screenSize),
                const SmallHome5_industry(),
                const SmallHome6_advantages(),
                const SmallHome7_news(),
                SmallHome8_contact_us(),
                SmallFooter(
                  content1: kontenkecil1(screenSize),
                  content2: kontenkecil2(screenSize),
                ),
              ],
            )
          : ListView(
              scrollDirection: Axis.vertical,
              controller: controller2,
              children: [
                Home(wijet: Button_scroll_small()),
                const Home2(),
                const Home3_partner(),
                Home4_solution(screenSize: screenSize),
                const Home5_industry(),
                const Home6_advantages(),
                const Home7_news(),
                Home8_contact_us(),
                Footer(
                  content1: konten1(screenSize),
                  content2: konten2(screenSize),
                ),
              ],
            ),
    );
  }

  Drawer _drawerWidget() => Drawer(
    width: 200,
    child: Column(
      children: [
        SizedBox(height: 50,),

        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () => _scrollToIndex(0) ,
        ),
        ListTile(
          leading: Icon(Icons.people),
          title: Text('About Us'),
          onTap: () => _scrollToIndex(420),
        ),
        ListTile(
          leading: Icon(Icons.lightbulb_outline_rounded),
          title: Text('Solution'),
          onTap: () => _scrollToIndex(840),
        ),
        ListTile(
          leading: Icon(Icons.contact_phone),
          title: Text('Contact Us'),
          onTap: () => _scrollToIndex(5410),
        ),
      ],
    ),
  );

  ElevatedButton Button_scroll() {
    return ElevatedButton(
      onPressed: () {
        _scrollToIndex(3780);
      },
      style: ElevatedButton.styleFrom(
        primary: const Color(0xff1e5ea8),
      ),
      child: Text(
        'CONTACT US',
        style: GoogleFonts.poppins(
            fontSize: 17, letterSpacing: 2, fontWeight: FontWeight.w500),
      ),
    );
  }

  ElevatedButton Button_scroll_small() {
    return ElevatedButton(
      onPressed: () {
        _scrollToIndex(5410);
      },
      style: ElevatedButton.styleFrom(
          primary: const Color(0xff1e5ea8), fixedSize: Size(50, 20)),
      child: Text(
        'CONTACT US',
        style: GoogleFonts.poppins(
            fontSize: 15, letterSpacing: 1.5, fontWeight: FontWeight.w500),
      ),
    );
  }

  PreferredSize AppbarSmall(Size screenSize) {
    return PreferredSize(
      preferredSize: Size(screenSize.width, 80),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
                color: Colors.grey, width: 1, style: BorderStyle.solid),
          ),
        ),
        child: Row(
          children: [
            const Spacer(
              flex: 1,
            ),
            IconButton(onPressed: () => _scaffoldKey.currentState!.openDrawer(), icon: Icon(Icons.list_outlined,size: 30,),),
            const Spacer(
              flex:2,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              height:75,
              child: Image.asset("assets/logo/multicloudsolution.jpg"),
            ),
            const Spacer(
              flex: 1,
            ),
            SizedBox(
              height: 40,
              width: 150,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Search",
                  suffixIcon: const Icon(Icons.search),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }

  PreferredSize AppbarLarge(Size screenSize) {
    return PreferredSize(
      preferredSize: Size(screenSize.width, 80),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
                color: Colors.grey, width: 0.5, style: BorderStyle.solid),
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: screenSize.width * 0.06,
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, top: 8, bottom: 8),
              child: Image.asset(
                "assets/logo/multicloudsolution.jpg",
                width: 190,
                height: 290,
              ),
            ),
            SizedBox(
              width: screenSize.width * 0.08,
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    _scrollToIndex(0);
                  },
                  style: Color_button_appbar(),
                  child: Text(
                    "Home",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.03,
                ),
                TextButton(
                  onPressed: () {
                    _scrollToIndex(420); //// POSISI ABOUT US
                  },
                  style: Color_button_appbar(),
                  child: Text(
                    "About us",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.03,
                ),
                TextButton(
                  onPressed: () {
                    _scrollToIndex(750); //// POSISI SOLUTION
                  },
                  style: Color_button_appbar(),
                  child: Text(
                    "Solution",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.03,
                ),
                TextButton(
                  onPressed: () {
                    _scrollToIndex(3780); //// POSISI CONTACT US
                  },
                  style: Color_button_appbar(),
                  child: Text(
                    "Contact Us",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: screenSize.width * 0.03,
            ),
            SizedBox(
              height: 50,
              width: 170,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Search",
                  suffixIcon: const Icon(Icons.search),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  ButtonStyle Color_button_appbar() {
    return ButtonStyle(
      foregroundColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered))
          // ignore: curly_braces_in_flow_control_structures
          return Colors.blue;
        return Colors.black; // null throus error in flutter 2.2+.
      }),
    );
  }

  Text FooterHead(String title) => Text(
        title,
        style: GoogleFonts.poppins(
            fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 2),
      );

  Center FooterHeadSmall(String title2) => Center(
    child: Text(title2,
    style: GoogleFonts.poppins(
        fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 2),
    ),
  );

  Column konten1(Size screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: screenSize.width * 0.1,
          height: screenSize.height * 0.05,
          child: FooterHead('Sitemap'),
        ),
        const Spacer(
          flex: 3,
        ),
        TextButton(
            onPressed: () {
              _scrollToIndex(0);
            },
            child: FooterBody(
              teks: 'Home',
            )),
        const Spacer(),
        TextButton(
            onPressed: () {
              _scrollToIndex(420);
            },
            child: FooterBody(
              teks: 'About Us',
            )),
        const Spacer(),
        TextButton(
            onPressed: () {
              _scrollToIndex(750);
            },
            child: FooterBody(
              teks: 'Solution',
            )),
        const Spacer(),
        TextButton(
            onPressed: () {
              _scrollToIndex(3780);
            },
            child: FooterBody(
              teks: 'Contact Us',
            )),
        const Spacer(
          flex: 6,
        ),
      ],
    );
  }

  Column konten2(Size screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            width: screenSize.width * 0.13,
            height: screenSize.height * 0.05,
            child: FooterHead('Solution')),
        const Spacer(
          flex: 3,
        ),
        TextButton(
            onPressed: () {
              _scrollToIndex(1230);
            },
            child: FooterBody(
              teks: 'Cloud Migration',
            )),
        const Spacer(),
        TextButton(
            onPressed: () {
              _scrollToIndex(1230);
            },
            child: FooterBody(
              teks: 'Consultation',
            )),
        const Spacer(),
        TextButton(
            onPressed: () {
              _scrollToIndex(1230);
            },
            child: FooterBody(
              teks: 'Local Support',
            )),
        const Spacer(),
        TextButton(
            onPressed: () {
              _scrollToIndex(1230);
            },
            child: FooterBody(
              teks: 'Cloud Implementation',
            )),
        const Spacer(
          flex: 6,
        ),
      ],
    );
  }

  Column kontenkecil1(Size screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: screenSize.width * 0.3,
          height: screenSize.height * 0.05,
          child: FooterHeadSmall('Sitemap'),
        ),
        const Spacer(
          flex: 3,
        ),
        TextButton(
            onPressed: () {
              _scrollToIndex(0);
            },
            child: FooterBody(
              teks: 'Home',
            )),
        const Spacer(),
        TextButton(
            onPressed: () {
              _scrollToIndex(420);
            },
            child: FooterBody(
              teks: 'About Us',
            )),
        const Spacer(),
        TextButton(
            onPressed: () {
              _scrollToIndex(840);
            },
            child: FooterBody(
              teks: 'Solution',
            )),
        const Spacer(),
        TextButton(
            onPressed: () {
              _scrollToIndex(5410);
            },
            child: FooterBody(
              teks: 'Contact Us',
            )),
        const Spacer(
          flex: 6,
        ),
      ],
    );
  }

  Column kontenkecil2(Size screenSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: screenSize.width * 0.3,
            height: screenSize.height * 0.05,
            child: FooterHeadSmall('Solution')),
        const Spacer(
          flex: 3,
        ),
        TextButton(
            onPressed: () {
              _scrollToIndex(1650);
            },
            child: FooterBody(
              teks: 'Cloud Migration',
            )),
        const Spacer(),
        TextButton(
            onPressed: () {
              _scrollToIndex(1650);
            },
            child: FooterBody(
              teks: 'Consultation',
            )),
        const Spacer(),
        TextButton(
            onPressed: () {
              _scrollToIndex(1650);
            },
            child: FooterBody(
              teks: 'Local Support',
            )),
        const Spacer(),
        TextButton(
            onPressed: () {
              _scrollToIndex(1650);
            },
            child: FooterBody(
              teks: 'Cloud Implementation',
            )),
        const Spacer(
          flex: 6,
        ),
      ],
    );
  }
}
