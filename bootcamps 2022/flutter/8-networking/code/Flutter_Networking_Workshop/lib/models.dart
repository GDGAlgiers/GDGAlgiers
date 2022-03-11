/*
{"abbreviation":"CET","client_ip":"105.97.130.222","datetime":"2022-03-11T19:17:27.103160+01:00","day_of_week":5,"day_of_year":70,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":3600,"timezone":"Africa/Algiers","unixtime":1647022647,"utc_datetime":"2022-03-11T18:17:27.103160+00:00","utc_offset":"+01:00","week_number":10}
*/

class DateResponse {
  final String datetime;

  DateResponse({this.datetime = ''});

  factory DateResponse.fromJson(Map<String, dynamic> json) {
    final datetime = json['datetime'];
    return DateResponse(datetime: datetime);
  }
}
