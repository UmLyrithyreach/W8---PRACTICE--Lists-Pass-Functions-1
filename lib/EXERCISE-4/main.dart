import 'package:flutter/material.dart';
import 'package:flutter_application_1/EXERCISE-4/data/jokesData.dart';
import 'package:flutter_application_1/EXERCISE-4/ui/favorite_card.dart';

Color appColor = Colors.green[300] as Color;

class FavouriteApp extends StatefulWidget{
  const FavouriteApp({super.key});

  @override
  State<StatefulWidget> createState() => _FavouriteApp();
}

class _FavouriteApp extends State<FavouriteApp>{
  int? favoriteCardIndex;

  void setFavourite(int index){
    setState(() {
      if (favoriteCardIndex == index) {
        favoriteCardIndex = null;
      } else {
        favoriteCardIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: appColor,
        title: const Text("Favorite Jokes"),
      ),
      body: ListView.builder(
        itemCount: jokes.length,
        itemBuilder: (context, index) {
          return FavoriteCard(
            title: jokes[index].title,
            description: jokes[index].description,
            isFavorite: favoriteCardIndex == index,
            onFavorite: () => setFavourite(index),
          );
        },
      ),
    );
  }
}
