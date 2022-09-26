import 'dart:convert';

import 'package:http/http.dart' as http;


var cmd = 'https://dmsdev-api.eksad.com/gateway/mcs/v1/cmd';
var qry = 'https://dmsdev-api.eksad.com/gateway/mcs/v1/qry';

Future<bool> createPartner(id,name,image,link) async {
  final response = await http.post(
      Uri.parse('$cmd/partner/savePartner'),
      body: jsonEncode({
        "partnerId": id,
        "filename": name,
        "filepath": image,
        "link": link,
      }),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      });
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}

Future<bool> updatePartner(id, name, image) async {
  final response = await http.put(
      Uri.parse('$cmd/partner/savePartner'),
      body:
          jsonEncode({
            "partnerId": id,
            "file_name": name,
            "file_path": image}),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      });
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}

Future<List<dynamic>> getPartner() async {
  var response = await http.get(
      Uri.parse('$qry/partner/getAllPartnerByActive'));
  return jsonDecode(response.body)['data'];
}

// Future<bool> deletePartner(id) async {
//   final response = await http.delete(
//     Uri.parse('$cmd/partner/deletePartner/$id'),
//     headers: {
//       'Content-type': 'application/json; charset=UTF-8',
//     },
//   );
//   if (response.statusCode == 200) {
//     return true;
//   } else {
//     return false;
//   }
// }

Future<bool> deletePartner(id) async {
  final response = await http.post(
    Uri.parse('$cmd/partner/deletePartner'),
    body: jsonEncode({"partnerId": id,}),
    
    headers: {
      'Content-type': 'application/json; charset=UTF-8',
    },
  );
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}
