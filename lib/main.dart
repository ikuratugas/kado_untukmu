import 'package:flutter/material.dart';
import 'package:kado_untukmu/models/thedata.dart';
import 'package:kado_untukmu/pages/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TheData()),
          ChangeNotifierProvider(create: (context) => MyImageDefault()),
        ],
        child: MaterialApp(
          title: 'Kado Untukmu',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'PatrickHand',
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 209, 67, 67)),
            useMaterial3: true,
          ),
          home: const Home(),
        ));
  }
}
