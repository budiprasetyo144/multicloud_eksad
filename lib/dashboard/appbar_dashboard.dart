import 'package:flutter/material.dart';
import 'package:multi_cloudv3/screen/home.dart';

AppBar BarAtas(BuildContext context) {
  return AppBar(
    //backgroundColor: Color.fromARGB(200, 9, 47, 171),
    backgroundColor: Colors.white,
    leading: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/logo/multicloudsolution.jpg'),
            fit: BoxFit.fill),
      ),
    ),
    leadingWidth: 200,
    actions: [
      Row(
        children: [
          //AlertForm(),
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
              Navigator.pushNamed(context, '/');
            },
            icon: const Icon(
              Icons.output,
            ),
            label: const Text(
              'Logout',
              style: TextStyle(),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_pin,
              color: Colors.blue,
            ),
            iconSize: 40,
          )
        ],
      ),
    ],
  );
}
