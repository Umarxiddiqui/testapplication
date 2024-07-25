import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapplication/view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: const ColorScheme.dark(
          primary: Colors.white,
          secondary: Colors.grey,
          secondaryContainer: Colors.black,
          onSurface: Colors.white,
          background: Colors.black,
          onBackground: Colors.white,
          error: Colors.red,
          onError: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      // Optionally, you can define routes here if needed
      // getPages: [
      //   GetPage(name: '/', page: () => SplashScreen()),
      // ],
    );
  }
}
