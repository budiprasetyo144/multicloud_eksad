import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_cloudv3/api/contact_api.dart';


class ContactDashboard extends StatefulWidget {
  const ContactDashboard({Key? key}) : super(key: key);

  @override
  State<ContactDashboard> createState() => _ContactDashboardState();
}

class _ContactDashboardState extends State<ContactDashboard> {
  final formKey = GlobalKey<FormState>();

  int id = 0;
  String name = '';
  String email = '';
  String massage = '';
  String number = '';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 10, 116, 255).withAlpha(60),
                blurRadius: 5.0,
                spreadRadius: 5.0,
                offset: const Offset(
                  0.0,
                  3.0,
                ),
              ),
            ]),
        child: Column(
          children: [
            Container(
              height: screenSize.height * 0.15,
              child: Center(
                child: Text(
                  'Data Messages from User',
                  style: GoogleFonts.poppins(
                      height: 1.5,
                      fontSize: 31,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent[200]),
                ),
              ),
            ),
            // Container(
            //   height: screenSize.height * 0.63,
            //   width: screenSize.width * 0.95,
            //   decoration:
            //       BoxDecoration(borderRadius: BorderRadius.circular(40)),
            //   //color: Colors.white,
            //   child: PaginatedDataTable(
            //     rowsPerPage: 5,
            //     // header :Text("Data Message User"),
            //     columnSpacing: 150,
            //     columns: [
            //       DataColumn(label: Text("ID")),
            //       DataColumn(label: Text("Name")),
            //       DataColumn(label: Text("Email")),
            //       DataColumn(label: Text("Message")),
            //       DataColumn(label: Text("Number")),
            //     ], source: ,
            //   ),
            // ),

            Container(
              height: screenSize.height * 0.6,
              child: ListView(
                controller: ScrollController(),
                children: [
                  FutureBuilder<List<dynamic>>(
                    future: getcontactDesc(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasError ||
                          snapshot.data == null ||
                          snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      }
                      return DataTable(
                        decoration: const BoxDecoration(color: Colors.white),
                        columnSpacing: 105,
                        columns: const [
                          DataColumn(label: Text("Date")),
                          DataColumn(label: Text("Name")),
                          DataColumn(label: Text("Number")),
                          DataColumn(label: Text("Email")),
                          DataColumn(label: Text("Action")),
                        ],
                        rows: List.generate(
                          snapshot.data.length,
                              (index) {
                            var pgm = snapshot.data[index];
                            return DataRow(
                              cells: [
                                DataCell(
                                  Text(pgm['dateContact']),
                                ),
                                DataCell(
                                  Text(pgm['namaContact']),
                                ),
                                DataCell(
                                  Text(pgm['noHp']),
                                ),
                                DataCell(
                                  Text(pgm['emailContact']),
                                ),
                                DataCell(
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                              const EdgeInsets.all(16.0),
                                              primary: Colors.white,
                                              backgroundColor: Color.fromARGB(
                                                  255, 15, 102, 223),
                                              textStyle:
                                              const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    title: Text(
                                                      "Information",
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    content: Container(
                                                      height:
                                                      screenSize.height *
                                                          0.3,
                                                      width: screenSize.width *
                                                          0.33,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        children: [
                                                          Text(
                                                              "Date    :  ${pgm['dateContact']}"),
                                                          Text(
                                                              "Nama    :  ${pgm['namaContact']}"),
                                                          Text(
                                                              "No.Telp :  ${pgm['noHp']}"),
                                                          Text(
                                                              "Email   :  ${pgm['emailContact']}"),
                                                          Text(
                                                              "Message :  ${pgm['messageContact']}"),
                                                        ],
                                                      ),
                                                    ),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                          padding:
                                                          const EdgeInsets
                                                              .all(16.0),
                                                          primary: Colors.white,
                                                          backgroundColor:
                                                          Color.fromARGB(
                                                              255,
                                                              15,
                                                              102,
                                                              223),
                                                          textStyle:
                                                          const TextStyle(
                                                              fontSize: 15),
                                                        ),
                                                        child:
                                                        const Text("Back"),
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                            child: const Text("View"),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                              const EdgeInsets.all(16.0),
                                              primary: Colors.white,
                                              backgroundColor:
                                              const Color.fromARGB(
                                                  255, 245, 27, 27),
                                              textStyle:
                                              const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    title:
                                                    const Text("Warning"),
                                                    content: Text(
                                                        "Are you sure want to delete data user ${pgm['namaContact']}?"),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        child:
                                                        const Text("Yes"),
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                          deleteContact(pgm[
                                                          'idContact'])
                                                              .then(
                                                                  (isSuccess) {
                                                                if (isSuccess) {
                                                                  setState(() {});
                                                                  ScaffoldMessenger.of(this
                                                                      .context)
                                                                      .showSnackBar(
                                                                      const SnackBar(
                                                                          content:
                                                                          Text("Delete data success")));
                                                                } else {
                                                                  ScaffoldMessenger.of(this
                                                                      .context)
                                                                      .showSnackBar(
                                                                      const SnackBar(
                                                                          content:
                                                                          Text("Delete data failed")));
                                                                }
                                                              });
                                                        },
                                                      ),
                                                      TextButton(
                                                        child: const Text("No"),
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                            child: const Text("Delete"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ).toList(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
