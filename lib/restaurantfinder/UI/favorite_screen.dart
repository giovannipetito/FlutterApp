import 'package:flutter/material.dart';
import 'package:flutter_app/restaurantfinder/BLoC/bloc_provider.dart';
import 'package:flutter_app/restaurantfinder/BLoC/favorite_bloc.dart';
import 'package:flutter_app/restaurantfinder/DataLayer/restaurant.dart';
import 'package:flutter_app/restaurantfinder/UI/restaurant_tile.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<FavoriteBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: StreamBuilder<List<Restaurant>>(
        stream: bloc.favoritesStream,
        /// 1)
        /// Questo aggiunge alcuni dati iniziali a StreamBuilder. StreamBuilders
        /// attiverà immediatamente la chiusura del builder, anche se non ci sono
        /// dati. Invece di disegnare lo schermo inutilmente, questo consente a
        /// Flutter di assicurarsi che lo snapshot contenga sempre dati.
        initialData: bloc.favorites,
        builder: (context, snapshot) {
          /// 2)
          /// Qui l'app controlla lo stato dello stream e, se non è ancora connesso,
          /// utilizza l'elenco esplicito dei ristoranti preferiti invece di un
          /// nuovo evento dallo stream.
          List<Restaurant> favorites =
              (snapshot.connectionState == ConnectionState.waiting)
                  ? bloc.favorites
                  : snapshot.data;

          if (favorites == null || favorites.isEmpty) {
            return Center(child: Text('No Favorites'));
          }

          return ListView.separated(
            itemCount: favorites.length,
            separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) {
              final restaurant = favorites[index];
              return RestaurantTile(restaurant: restaurant);
            },
          );
        },
      ),
    );
  }
}
