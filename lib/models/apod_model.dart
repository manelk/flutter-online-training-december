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
}

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
