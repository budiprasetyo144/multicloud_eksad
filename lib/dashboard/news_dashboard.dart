import 'package:flutter/material.dart';
import 'package:multi_cloudv3/dashboard/dashboard.dart';
import 'package:multi_cloudv3/api/news_api.dart';
import 'package:multi_cloudv3/dashboard/new_sidemenu.dart';

class NewsDashboard extends StatefulWidget {
  const NewsDashboard({Key? key}) : super(key: key);

  @override
  State<NewsDashboard> createState() => _NewsDashboardState();
}

class _NewsDashboardState extends State<NewsDashboard> {
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  final formKey = GlobalKey<FormState>();
  String title = '';
  String news = '';
  String images = '';
  String link = '';
  int id = 0;
  String selecttitle = '';
  String selectnews = '';

  int selectedIndex = 0;

  final TextEditingController _controllerTitle = TextEditingController();
  final TextEditingController _controllerNews = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      padding: const EdgeInsets.only(left: 40, right: 40),
      color: const Color.fromRGBO(238, 224, 224, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            child: Row(
              children: [
                const Text("News     ",
                    style: TextStyle(
                      fontSize: 20,
                    )),
                ElevatedButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.white,
                      backgroundColor: Colors.blue,
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                               Icon(Icons.note),
                              Text('Add News'),
                            ],
                          ),
                          content: Form(
                            key: formKey,
                            child: Container(
                              width: screenSize.width*0.5,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                verticalDirection: VerticalDirection.down,
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  //IconButton(onPressed: (){}, icon: Icon(Icons.add_photo_alternate_outlined,size: 30,)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 230,
                                        child: TextFormField(
                                          textAlign: TextAlign.start,
                                          decoration: InputDecoration(
                                            labelText: "Masukkan Code Image",
                                            hintStyle: const TextStyle(),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.0)),
                                          ),
                                          onChanged: (value) => images = value,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      Container(
                                        width: 230,
                                        child: TextFormField(
                                          textAlign: TextAlign.start,
                                          decoration: InputDecoration(
                                            labelText: "Masukkan Title",
                                            hintStyle: const TextStyle(),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(5.0)),
                                          ),
                                          onChanged: (value) => title = value,
                                        ),
                                      ),
                                    ],
                                  ),

                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    width: 490,
                                    child: TextFormField(
                                      textAlign: TextAlign.start,
                                      maxLines: 7,
                                      decoration: InputDecoration(
                                        labelText: "Masukkan Keterangan News",
                                        hintStyle: const TextStyle(),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0)),
                                      ),
                                      onChanged: (value) => news = value,
                                    ),
                                  ),
                                  const SizedBox(height: 25,),
                                  Container(
                                    width: 490,
                                    child: TextFormField(
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      decoration: InputDecoration(
                                        labelText: "Masukkan Link News",
                                        hintStyle: const TextStyle(),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(5.0)),
                                      ),
                                      onChanged: (value) => link = value,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          actions: <Widget>[
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                                if (title.trim().isEmpty &&
                                    news == null &&
                                    images == null) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Title Can\'t Be Empty')),
                                  );
                                  //print('Title News Kosong');
                                } else if (news.trim().isEmpty &&
                                    title == null &&
                                    images == null) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('News Can\'t Be Empty')),
                                  );
                                 // print('Isi News kosong');
                                } else if (images.trim().isEmpty &&
                                    title == null &&
                                    news == null) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Image Can\'t Be Empty')),
                                  );
                                  //print('Images Kosong');
                                }
                                createNews(title, news, images,link);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Data Saved')),
                                );
                               // print('Data Tersimpan');
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => const DashboardAdmin(),
                                //   ),
                                // );

                              },
                              child: const Text('Save'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: const Text('Add News')),
                const Spacer(flex: 10,),
                SizedBox(
                  height: 40,
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Search",
                      prefixIcon: const Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        const BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFF42A5F5),
                                Color(0xFF42A5F5),
                              ],
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          primary: Colors.white,
                          backgroundColor: Colors.blue,
                          textStyle: const TextStyle(fontSize: 15),
                        ),
                        onPressed: () {},
                        child: const Text("Search News"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          Container(

            height: screenSize.height * 0.65,
            child: ListView(
              controller: ScrollController(),
              children: [
                FutureBuilder<List<dynamic>>(
                  future: getNews(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasError ||
                        snapshot.data == null ||
                        snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    }
                    return DataTable(
                      decoration: const BoxDecoration(color: Colors.white),
                     // columnSpacing: 70,
                      columns: const [
                        DataColumn(label: Text('Id')),
                        DataColumn(label: Text('Title')),
                        DataColumn(label: Text('News')),
                        DataColumn(label: Text('Images')),
                        DataColumn(label: Text('Link')),
                        // DataColumn(label: Text('Status')),
                        DataColumn(label: Text('Action')),

                      ],
                      rows: List.generate(
                        snapshot.data.length,
                        (index) {
                          var pgm = snapshot.data[index];
                          return DataRow(cells: [
                            DataCell(
                              Text(pgm['idnews'].toString()),
                            ),
                            DataCell(
                              Text(pgm['title']),
                            ),
                            DataCell(
                              Text(pgm['news']),
                            ),
                            DataCell(
                              Text(pgm['image']),
                            ),
                            DataCell(
                              Text(pgm['link']),
                            ),
                            // DataCell(
                            //   Text(pgm['status']),
                            // ),
                            DataCell(
                              Row(
                                children: [
                                  TextButton(


                                    onPressed: () {
                                      var pgm = snapshot.data[index];
                                      selectedIndex = index;
                                      id = pgm['idnews'];
                                      selecttitle = pgm['title'];
                                      selectnews = pgm['news'];
                                      //print(selectedIndex);
                                   //  print(pgm['idnews']);
                                     // print(selecttitle);

                                      _controllerNews.clear();
                                      // _controllerId.clear();
                                      _controllerTitle.clear();
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                          title: const Center(
                                              child: Text('Update News')),
                                          content: Form(
                                            key: formKey,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              verticalDirection:
                                                  VerticalDirection.down,
                                              children: [

                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Text(
                                                  'Data Harus di Edit*',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.red),
                                                ),
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                                Center(
                                                  child: Container(
                                                    width: 200,
                                                    child: TextFormField(
                                                      //controller: _controllerTitle,

                                                      textAlign:
                                                          TextAlign.start,
                                                      initialValue: selecttitle,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Masukkan Title News Baru',
                                                        //labelStyle: TextStyle(),

                                                        border: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0)),
                                                      ),

                                                      onChanged: (value) =>
                                                          title = value,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 40,
                                                ),
                                                Center(
                                                  child: Container(
                                                    width: 200,
                                                    child: TextFormField(
                                                      //controller: _controllerNews,
                                                      textAlign:
                                                          TextAlign.start,
                                                      initialValue: selectnews,
                                                      maxLines: 7,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            "Masukkan Keterangan Baru",
                                                        hintStyle:
                                                            const TextStyle(),
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.0),
                                                        ),
                                                      ),
                                                      onChanged: (value) =>
                                                          news = value,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          actions: <Widget>[
                                            TextButton(
                                              style: TextButton.styleFrom(
                                                padding:
                                                    const EdgeInsets.all(16.0),
                                                primary: Colors.black,
                                                backgroundColor:
                                                    const Color.fromARGB(
                                                        255, 16, 199, 71),
                                                textStyle: const TextStyle(
                                                    fontSize: 15),
                                              ),
                                              onPressed: () {
                                                Navigator.pop(context);

                                                if (title.isEmpty &&
                                                    news.isEmpty) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    const SnackBar(
                                                        content: Text(
                                                            'Data Must Be Edited')),
                                                  );
                                                } else if (news.isEmpty) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    const SnackBar(
                                                        content: Text(
                                                            'Content Must Be Edited')),
                                                  );
                                                } else if (title.isEmpty) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    const SnackBar(
                                                        content: Text(
                                                            'Name Must Be Edited')),
                                                  );
                                                } else {
                                                  updateNews(id, title, news)
                                                      .then(
                                                    (isSuccess) {
                                                      if (isSuccess) {
                                                        setState(() {});
                                                        ScaffoldMessenger.of(
                                                                this.context)
                                                            .showSnackBar(
                                                          const SnackBar(
                                                            content: Text(
                                                                "Data success"),
                                                          ),
                                                        );
                                                      } else {
                                                        ScaffoldMessenger.of(
                                                                this.context)
                                                            .showSnackBar(
                                                          const SnackBar(
                                                            content: Text(
                                                                "Data failed!!!"),
                                                          ),
                                                        );
                                                      }
                                                    },
                                                  );
                                                }
                                              },
                                              child: const Text('Update'),

                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    child: const Text('Edit'),
                                    style: TextButton.styleFrom(
                                      padding: const EdgeInsets.all(16.0),
                                      primary: Colors.white,
                                      backgroundColor: const Color.fromARGB(
                                          200, 23, 104, 210),
                                      textStyle: const TextStyle(fontSize: 15),

                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      padding: const EdgeInsets.all(16.0),
                                      primary: Colors.white,
                                      backgroundColor: const Color.fromARGB(
                                          255, 245, 27, 27),
                                      textStyle: const TextStyle(fontSize: 15),
                                    ),
                                    onPressed: () {
                                      var pgm = snapshot.data[index];
                                      selectedIndex = index;
                                      id = pgm['idnews'];
                                      selecttitle = pgm['title'];
                                      selectnews = pgm['news'];
                                      //print(selectedIndex);
                                   //   print(pgm['idnews']);
                                    //  print(selecttitle);


                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: const Text("Warning"),
                                            content: Text(
                                                "Are you sure want to delete data news ${pgm['title']}?"),
                                            actions: <Widget>[
                                              TextButton(
                                                child: const Text("Yes"),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  deleteNews(id)
                                                      .then((isSuccess) {
                                                    if (isSuccess) {
                                                      setState(() {});
                                                      ScaffoldMessenger.of(this.context)
                                                          .showSnackBar(
                                                              const SnackBar(
                                                                  content: Text(
                                                                      "Delete data success")));
                                                    } else {
                                                      ScaffoldMessenger.of(this.context)
                                                          .showSnackBar(
                                                              const SnackBar(
                                                                  content: Text(
                                                                      "Delete data failed")));
                                                    }
                                                  });
                                                },
                                              ),
                                              TextButton(
                                                child: const Text("No"),
                                                onPressed: () {
                                                  Navigator.pop(context);
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
                            ),
                          ]);
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
    );
  }
}
