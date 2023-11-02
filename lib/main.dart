import 'package:flutter/material.dart';
import 'package:learn_flutter_provider/provider/count_provider.dart';
import 'package:learn_flutter_provider/provider/favourite_provider.dart';
import 'package:learn_flutter_provider/provider/slider_provider.dart';
import 'package:learn_flutter_provider/screens/favourite_view/favourite_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => SliderProvider()),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: FavouriteScreen(),
      ),
    );
  }
}
