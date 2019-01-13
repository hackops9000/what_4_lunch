import 'dart:convert';

import 'package:what_4_lunch/place.dart';
import 'package:http/http.dart' as http;

class Places {
  final String apiEndpoint = 'https://what4lunch-api.azurewebsites.net/api/random';

  getRandomPlace() async {
    // return _places[_random.nextInt(_places.length)];
    http.Response response = await http.get(apiEndpoint);
    return mapPlace(response.body);
  }

  Place mapPlace(String jsonStr) {
    Map<String, dynamic> jsonMap = json.decode(jsonStr);
    return Place.fromJson(jsonMap);
  }
}

final places = Places();
