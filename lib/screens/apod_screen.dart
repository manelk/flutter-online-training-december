import 'package:flutter/material.dart';
import 'package:online_training/mock/apod_data.dart';
import 'package:online_training/models/apod_model.dart';
import 'package:online_training/services/apod_service.dart';
import 'package:online_training/widgets/apod_widget.dart';

class ApodScreen extends StatefulWidget {
  const ApodScreen({super.key});

  @override
  State<ApodScreen> createState() => _ApodScreenState();
}

class _ApodScreenState extends State<ApodScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // first step trying data static
    final apod = apods[1];

    /// LINK OF DOCUMENTATION: https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html
    return Scaffold(
      appBar: AppBar(title: Text("Asto picture of the day")),
      body: FutureBuilder<List<ApodModel>>(
        future: ApodService().fetchApods(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: apods.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ApodWidget(apod: apods[index]),
                );
              },
            );
          } else if (snapshot.hasError) {
            Text("error");
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
