// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class FavoritListScreen extends StatefulWidget {
  const FavoritListScreen({super.key, required this.selectedfavoritlist});
  final List<int> selectedfavoritlist;
  @override
  State<FavoritListScreen> createState() => _FavoritListScreenState();
}

class _FavoritListScreenState extends State<FavoritListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite List'),
      ),
      body: ListView.builder(
        itemCount: widget.selectedfavoritlist.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('favorite ${widget.selectedfavoritlist[index]}'),
            trailing: IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                widget.selectedfavoritlist.remove(widget.selectedfavoritlist[index]);
                setState(() {});
              },
            ),
          );
        },
      ),
    );
  }
}
