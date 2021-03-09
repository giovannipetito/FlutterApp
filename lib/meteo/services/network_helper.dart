import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {

  final String url;

  NetworkHelper(this.url);

  Future getData() async {
    // Scrivere "http." davanti a Response o al metodo get è facoltativo, ma ci
    // aiuta a capire che Response e get derivano dal package http.
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {

      String data = response.body;

      /*
      print('data: $data');

      var longitude = jsonDecode(data)['coord']['lon'];
      print('longitude: $longitude');

      var weatherDescription = jsonDecode(data)['weather'][0]['description'];
      print('weatherDescription: $weatherDescription');
      */

      var decodedData = jsonDecode(data);
      return decodedData;

    } else {
      print(response.statusCode);
    }
  }
}