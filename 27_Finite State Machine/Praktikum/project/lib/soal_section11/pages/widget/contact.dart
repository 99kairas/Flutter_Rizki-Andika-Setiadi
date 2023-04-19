import 'package:flutter/material.dart';

class Contact {
  String firstName;
  String lastName;
  String contact;
  String date;
  Color? color = Colors.cyan;

  Contact({
    required this.firstName,
    required this.lastName,
    required this.contact,
    required this.date,
    this.color,
  });
}
