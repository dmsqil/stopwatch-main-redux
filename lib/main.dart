// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart'; // Import the redux package here
import 'package:stopwatch/home.dart';
import 'store.dart';
import 'app_state.dart';

void main() {
  final store = createStore();
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  const MyApp({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Stopwatch',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: Home(),
      ),
    );
  }
}
