import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:online_training/models/apod_model.dart';

/// L
class ApodService {
  Future<List<ApodModel>> fetchApods() async {
    var url = Uri.parse(
      "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&start_date=2025-12-01&end_date=2025-12-12",
    );

    // get response from the url
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // decode the response
      final List<dynamic> jsonList = jsonDecode(response.body);

      print("jsonList : $jsonList");

      // need to map the upcoming apod model into a list
      return jsonList.map((element) => ApodModel.fromJson(element)).toList();
    }

    return [];
  }
}
