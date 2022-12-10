import 'package:flutter_task/models/event_models.dart';
import 'package:flutter_task/models/program_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ApiServices {
  static fetchProgramFromApi() async {
    List<ProgramModel> model = [];
    var response = await http.get(
        Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/programs'));
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      for (var data in jsonResponse['items']) {
        model.add(ProgramModel.fromJson(data));
      }
    }
    return model;
  }

  static fetchEventFromApi() async {
    List<EventModel> model = [];
    var response = await http.get(
        Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/lessons'));
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      for (var data in jsonResponse['items']) {
        model.add(EventModel.fromJson(data));
      }
    }
    return model;
  }
}


