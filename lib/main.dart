import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muhiguzogo/utils/init_Sharedprefs.dart';
import 'package:muhiguzogo/screen/AllScreenContainer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  PrefUtils().init();
  // Set the status bar color
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color.fromARGB(
        255, 31, 28, 102), // Change this color to the desired color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GuzoGo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 31, 28, 102)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const CustomContainerView(),
    );
  }
}
