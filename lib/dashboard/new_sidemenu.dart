import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:multi_cloudv3/dashboard/contact_dashboard.dart';
import 'package:multi_cloudv3/dashboard/main_dashboard.dart';
import 'package:multi_cloudv3/dashboard/news_dashboard.dart';
import 'package:multi_cloudv3/dashboard/ourpartner_dashboard.dart';
import 'package:multi_cloudv3/dashboard/pages_dashboard.dart';
import 'package:multi_cloudv3/dashboard/setting_dashboard.dart';
import 'package:multi_cloudv3/dashboard/sosmed_dashboard.dart';

class DashboardAdmin extends StatefulWidget {
  const DashboardAdmin({Key? key}) : super(key: key);

  @override
  State<DashboardAdmin> createState() => _DashboardAdminState();
}

class _DashboardAdminState extends State<DashboardAdmin> {

  PageController page = PageController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) * 2;
    final double itemWidth = size.width / 1.65;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        leadingWidth: 190,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
          child: Container(
            width: 190,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/logo/multicloudsolution.jpg'),
                    fit: BoxFit.fill)),
          ),
        ),
        actions: [
          TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: const Icon(
              Icons.remove_red_eye,
            ),
            label: const Text(
              'Site Online',
            ),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            icon: const Icon(
              Icons.output,
            ),
            label: const Text(
              'Logout',
              style: TextStyle(),
            ),
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(
            showToggle: true,
            controller: page,
            // onDisplayModeChanged: (mode) {
            //   print(mode);
            // },
            style: SideMenuStyle(
              openSideMenuWidth: 220,
              displayMode: SideMenuDisplayMode.auto,
              hoverColor: Colors.blue[50],
              selectedColor: Colors.blue[100],
              selectedTitleTextStyle: const TextStyle(color: Colors.black),
              selectedIconColor: Colors.black,
              unselectedIconColor: Colors.black87,
              unselectedTitleTextStyle: const TextStyle(color: Colors.black87),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.all(Radius.circular(10)),
              // ),
              backgroundColor: Colors.blueAccent[200],
            ),
            title: Column(
              children: [
                // ConstrainedBox(
                //   constraints: const BoxConstraints(
                //     maxHeight: 150,
                //     maxWidth: 150,
                //   ),
                //   child: Image.asset(
                //     'assets/logo/medapp-logo.png',
                //   ),
                // ),
                // const Divider(
                //   indent: 8.0,
                //   endIndent: 8.0,
                // ),
                Container(
                  height: 20,
                )
              ],
            ),
            footer: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Multi Cloud Solution By Eksad',
                style: TextStyle(fontSize: 15),
              ),
            ),
            items: [
              SideMenuItem(
                priority: 0,
                title: 'Dashboard',
                onTap: () {
                  page.jumpToPage(0);
                },
                icon: const Icon(Icons.home),
              ),
              SideMenuItem(
                priority: 1,
                title: 'Settings',
                onTap: () {
                  page.jumpToPage(1);
                },
                icon: const Icon(Icons.settings),
              ),
              // SideMenuItem(
              //   priority: 2,
              //   title: 'Pages',
              //   onTap: () {
              //     page.jumpToPage(2);
              //   },
              //   icon: const Icon(Icons.file_copy),
              // ),
              SideMenuItem(
                priority: 3,
                title: 'News',
                onTap: () {
                  page.jumpToPage(3);
                },
                icon: const Icon(Icons.newspaper),
              ),
              SideMenuItem(
                priority: 4,
                title: 'Our Partner',
                onTap: () {
                  page.jumpToPage(4);
                },
                icon: const Icon(Icons.people_alt),
              ),
              SideMenuItem(
                priority: 5,
                title: 'Social Media',
                onTap: () {
                  page.jumpToPage(5);
                },
                icon: const Icon(Icons.phone_android),
              ),
              SideMenuItem(
                priority: 6,
                title: 'Contact List',
                onTap: () {
                  page.jumpToPage(6);
                },
                icon: const Icon(Icons.contact_mail),
              ),

            ],
          ),
          Expanded(
            child: PageView(
              controller: page,
              children: [
                const MainDashboard(),
                const SettingDashboard(),
                const PagesDashboard(),
                const NewsDashboard(),
                const OurpartnerDashboard(),
                const SosmedDashboard(),
                const ContactDashboard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


