import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:foodapp/view/detail.dart';
import 'package:foodapp/view/home.dart';

void main() {
  runApp(MaterialApp(
    home: ProviderScope(child: Home()),
    theme: ThemeData(scaffoldBackgroundColor: Colors.white),
  ));
}
