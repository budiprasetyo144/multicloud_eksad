import 'dart:convert';

import 'package:http/http.dart' as http;

var cmd = 'https://dmsdev-api.eksad.com/gateway/mcs/v1/cmd';
var qry = 'https://dmsdev-api.eksad.com/gateway/mcs/v1/qry';

Future<List<dynamic>> getcontact() async {
  var response = await http.get(Uri.parse('$qry/contact/get'));
  return jsonDecode(response.body)['data'];
}

Future<List<dynamic>> getcontactDesc() async {
  var response = await http.get(Uri.parse('$qry/contact/getContactByDate'));
  return jsonDecode(response.body)['data'];
}

Future<bool> savecontact(nama, email, nohp, message) async {
  final response = await http.post(
      Uri.parse('$cmd/contact/save'),
      body: jsonEncode({
        "nama": nama,
        "email": email,
        "noHp": nohp,
        "message": message}),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      });
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
  // return response.statusCode;
}

Future<bool> deleteContact(id) async {
  final response = await http.delete(
    Uri.parse('$cmd/contact/delete/$id'),
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

