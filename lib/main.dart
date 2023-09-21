import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/task.dart';
import './screens/homepage.dart';

void main() => runApp(const ToDoListApp());

class ToDoListApp extends StatelessWidget {
  const ToDoListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          hintColor: Colors.black,
          fontFamily: 'Lato',
          textTheme: ThemeData.light().textTheme.copyWith(
                titleMedium: const TextStyle(
                  color: Colors.black87,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                titleSmall: const TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
          appBarTheme: AppBarTheme(
            toolbarTextStyle: ThemeData.light()
                .textTheme
                .copyWith(
                  titleMedium: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
                .bodyMedium,
            titleTextStyle: ThemeData.light()
                .textTheme
                .copyWith(
                  titleSmall: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
                .titleLarge,
          ),
        ),
        title: 'To Do List',
        home: const Homepage(),
      ),
    );
  }
}
