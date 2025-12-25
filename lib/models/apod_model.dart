/// LINK: https://app.quicktype.io/
class ApodModel {
  final String copyright;
  final String explanation;
  final String title;
  final String url;
  final DateTime date;
  // named constructor in dart
  ApodModel({
    required this.copyright,
    required this.explanation,
    required this.title,
    required this.url,
    required this.date,
  });

  factory ApodModel.fromJson(Map<String, dynamic> json) => ApodModel(
    copyright: json["copyright"],
    date: DateTime.parse(json["date"]),
    explanation: json["explanation"],
    title: json["title"],
    url: json["url"],
  );
}

// we are not going to use this
class ApodModelUnamedParams {
  final String copyright;
  final String explanation;
  final String title;
  final String? url;
  final String date;
  // unnamed constructor in dart
  ApodModelUnamedParams(
    this.copyright,
    this.explanation,
    this.title,
    this.url,
    this.date,
  );
}
