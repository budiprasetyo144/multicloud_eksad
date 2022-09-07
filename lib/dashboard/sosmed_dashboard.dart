import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SosmedDashboard extends StatefulWidget {
  const SosmedDashboard({Key? key}) : super(key: key);

  @override
  State<SosmedDashboard> createState() => _SosmedDashboardState();
}

class _SosmedDashboardState extends State<SosmedDashboard> {


  var btnText = 'Save Setting';
  var enb = true;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromRGBO(238, 224, 224, 1),
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05,vertical: screenSize.height*0.05),
      child: Container(
        width: screenSize.width,
        height: screenSize.height * 0.8,
        padding: const EdgeInsets.only(left: 30,top: 15,right: 30,bottom: 15),
        color: Colors.white,
        child: Form(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Social Media Setting",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.normal)),
                    // SizedBox(
                    //   height: 0,
                    //   width: 820,
                    // ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        primary: const Color.fromARGB(255, 0, 67, 192),
                      ),
                      onPressed: () {
                        switch (btnText) {
                          case 'Save Setting':
                            // createSetting(im.toString(), tt.toString(),
                            //     tl.toString(), em.toString(), no.toString());
                            setState(() {
                              btnText = 'Update Setting';
                              enb = false;
                            });
                            break;
                          case 'Update Setting':
                            setState(() {
                              enb = true;
                              btnText = 'Save Update';
                            });
                            break;
                          case 'Save Update':
                            break;
                          default:
                        }
                      },
                      child: Text(
                        btnText,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  height: 20,
                  thickness: 1,
                  // indent: 20,
                  // endIndent: 0,
                  color: Colors.grey,
                ),
                SizedBox(height: 25,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    listsosmed(Icon(Icons.whatsapp,color: Colors.green,), TextFormField(
                      decoration: InputDecoration(hintText: 'Enter WhatsApp number without +,   Ex : 6280000000000 '),
                    ), ElevatedButton(onPressed: (){}, child: Text('View Active'))),
                    SizedBox(height: 10,),
                    listsosmed(Icon(FontAwesomeIcons.linkedin,color: Colors.blue,), TextFormField(
                      decoration: InputDecoration(hintText: 'Enter a new Linkedin link address'),
                    ), ElevatedButton(onPressed: (){}, child: Text('View Active'))),
                    SizedBox(height: 10,),
                    listsosmed(Icon(FontAwesomeIcons.twitterSquare,color: Colors.blueAccent,), TextFormField(
                      decoration: InputDecoration(hintText: 'Enter a new Twitter link address'),
                    ), ElevatedButton(onPressed: (){}, child: Text('View Active'))),
                    SizedBox(height: 10,),
                    listsosmed(Icon(FontAwesomeIcons.instagramSquare,color: Colors.pink,), TextFormField(
                      decoration: InputDecoration(hintText: 'Enter a new Instagram link address'),
                    ), ElevatedButton(onPressed: (){}, child: Text('View Active'))),
                    SizedBox(height: 10,),
                    listsosmed(Icon(FontAwesomeIcons.youtube,color: Colors.red,), TextFormField(
                      decoration: InputDecoration(hintText: 'Enter a new Youtube link address'),
                    ), ElevatedButton(onPressed: (){}, child: Text('View Active'))),

                  ],
                ),
                ],
            ),
        ),
      ),
    );
  }
}


ListTile listsosmed (Icon icon,Widget field, Widget button){
  return ListTile(
    leading: icon,
    title: field,
    trailing: button,
  );
}