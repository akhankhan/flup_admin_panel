import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentation/screens/navigation/navigation_provider.dart';
import 'presentation/screens/navigation/navigation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Navigation Drawer';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => NavigationProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData(primarySwatch: Colors.deepOrange),
          home: const NavigationScreen(),
        ),
      );
}
