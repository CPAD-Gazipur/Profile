import 'package:flutter/material.dart';

class Testimonial {
  String text;
  final String occupation;
  final String personName;
  final String profilePhoto;

  Testimonial({
    this.text,
    @required this.occupation,
    @required this.personName,
    @required this.profilePhoto,
  });
}
