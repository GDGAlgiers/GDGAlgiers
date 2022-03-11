import 'dart:convert';
import 'package:network_workshop/models.dart';
import 'package:http/http.dart' as http;

class DataService {
  Future<DateResponse> getTime(String timezone) async {
    final uri = Uri.https('worldtimeapi.org', '/api/timezone/' + timezone);
    final response = await http.get(uri);

    print(response.body);
    final json = jsonDecode(response.body);
    return DateResponse.fromJson(json);
  }
}
