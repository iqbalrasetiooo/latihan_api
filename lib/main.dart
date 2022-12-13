import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:practice_api/app.dart';
import 'package:practice_api/general_observer.dart';

void main() {
  Bloc.observer = MyObserver();
  runApp(const MyApp());
}
