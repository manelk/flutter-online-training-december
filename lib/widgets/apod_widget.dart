import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:online_training/models/apod_model.dart';

class ApodWidget extends StatelessWidget {
  const ApodWidget({super.key, required this.apod});

  final ApodModel apod;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(width: 350, height: 350),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.black, blurRadius: 10, spreadRadius: 2),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            // Background Image
            Positioned.fill(child: Image.network(apod.url, fit: BoxFit.cover)),
            // Text Content
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Column(
                spacing: 8,
                crossAxisAlignment: .start,
                children: [
                  Text(
                    apod.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    DateFormat('yyyy-MM-dd').format(apod.date),
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.8),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
