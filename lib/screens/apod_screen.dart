import 'package:flutter/material.dart';
import 'package:online_training/data/apod_data.dart';
import 'package:intl/intl.dart';

class ApodScreen extends StatelessWidget {
  const ApodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // first step trying data static
    final apod = apods[1];

    return Scaffold(
      appBar: AppBar(title: Text("Asto picture of the day")),
      body: ListView.builder(
        itemCount: apods.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.5,
            child: Card(
              color: Colors.orange.shade100,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: const .all(8.0),
                child: Column(
                  spacing: 8.0,
                  crossAxisAlignment: .start,
                  children: [
                    Text(apods[index].title),
                    Text(
                      DateFormat.yMMMMEEEEd().format(apods[index].date),
                      style: TextStyle(fontSize: 12),
                    ),
                    // Text(apod.date.add(Duration(days: 1)).toString()),
                    Image.network(
                      height: 300,
                      apods[index].url,
                      errorBuilder: (context, error, stackTrace) {
                        return Text("Error showing the image from network.");
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
