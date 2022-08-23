import 'package:flutter/material.dart';
import 'package:multi_cloudv3/dashboard/side_menu.dart';
import 'package:multi_cloudv3/dashboard/appbar_dashboard.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarAtas(context),
      body: const SideMenu(),
    );
  }
}
