import 'package:flutter/material.dart';
import 'package:learn_flutter_provider/provider/favourite_provider.dart';
import 'package:learn_flutter_provider/screens/favourite_view/favourite_items.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    // final FavouriteProvider = Provider.of<FavoriteProvider>(context);

    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite App"),
        actions: [
          InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FavouriteItems(),
                ));
              },
              child: Icon(Icons.favorite)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: 1000,
            itemBuilder: (context, index) {
              return Consumer<FavoriteProvider>(
                  builder: (context, value, child) {
                return ListTile(
                  title: Text("Item $index"),
                  trailing: Icon(value.selctedItems.contains(index)
                      ? Icons.favorite
                      : Icons.favorite_border),
                  onTap: () {
                    if (value.selctedItems.contains(index)) {
                      value.removeItems(index);
                    } else {
                      value.addItems(index);
                    }
                  },
                );
              });
            },
          ))
        ],
      ),
    );
  }
}
