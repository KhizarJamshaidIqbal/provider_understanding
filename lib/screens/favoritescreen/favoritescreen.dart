// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_understanding/screens/favoritescreen/favoritlistscreen.dart';

import '../../controller/favoritcontroller.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _FavoriteScreenState();
  }
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<int> favorite = [];

  @override
  Widget build(BuildContext context) {
    final favoirtes = Provider.of<FavoritProvider>(context, listen: false);
    // ignore: avoid_print
    print('build: ${favoirtes.selectedIteam.length}');
    return Scaffold(
        appBar: AppBar(
          title: const Text('Favorite App'),
          actions: [
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FavoritListScreen(
                        selectedfavoritlist: favoirtes.selectedIteam,
                      ),
                    ));
              },
            )
          ],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Consumer<FavoritProvider>(
              builder: (context, value, child) {
                // print('second build: ${favoirtes.selectedIteam.length}');
                return ListTile(
                  onTap: () {
                    value.setAddFavorite(index);
                  },
                  title: Text('favorite: $index'),
                  trailing: value.selectedIteam.contains(index)
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : const Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.black,
                        ),
                );
              },
            );
          },
        ));
  }
}
