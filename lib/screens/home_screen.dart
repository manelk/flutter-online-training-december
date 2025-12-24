import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    this.firstName,
    required this.lastName,
    required this.birthDate,
  });

  final String? firstName;
  final String lastName;
  final String birthDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter app'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          /// Display element next to each other which are the image and the user data:
          /// firstname, lastname, age, birthdate
          Row(
            children: [
              Image.asset("assets/images/photo_person.jpeg", height: 200),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "First Name: ",
                        style: TextStyle(color: Colors.redAccent, fontSize: 16),
                      ),
                      Text(firstName ?? ""),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Last Name: ",
                        style: TextStyle(color: Colors.redAccent, fontSize: 16),
                      ),
                      Text(lastName),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Birthdate: ",
                        style: TextStyle(color: Colors.redAccent, fontSize: 16),
                      ),
                      Text(birthDate),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
