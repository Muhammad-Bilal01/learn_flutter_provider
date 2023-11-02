import 'package:flutter/material.dart';
import 'package:learn_flutter_provider/provider/favourite_provider.dart';
import 'package:provider/provider.dart';

class FavouriteItems extends StatefulWidget {
  const FavouriteItems({super.key});

  @override
  State<FavouriteItems> createState() => _FavouriteItemsState();
}

class _FavouriteItemsState extends State<FavouriteItems> {
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite Items"),
      ),
      body: Consumer<FavoriteProvider>(builder: (context, value, child) {
        return ListView.builder(
          itemCount: value.selctedItems.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("item ${value.selctedItems[index]}"),
              trailing: Icon(Icons.favorite),
              onTap: () {
                value.removeByValue(value.selctedItems[index]);
              },
            );
          },
        );
      }),
    );
  }
}
