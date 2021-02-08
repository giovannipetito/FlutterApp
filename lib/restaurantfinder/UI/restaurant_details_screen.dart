import 'package:flutter/material.dart';
import 'package:flutter_app/restaurantfinder/BLoC/bloc_provider.dart';
import 'package:flutter_app/restaurantfinder/BLoC/favorite_bloc.dart';
import 'package:flutter_app/restaurantfinder/DataLayer/restaurant.dart';
import 'package:flutter_app/restaurantfinder/UI/image_container.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantDetailsScreen({Key key, this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: Text(restaurant.name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildBanner(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  restaurant.cuisines,
                  style: textTheme.subtitle.copyWith(fontSize: 18),
                ),
                Text(
                  restaurant.address,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
                ),
              ],
            ),
          ),
          _buildDetails(context),
          _buildFavoriteButton(context)
        ],
      ),
    );
  }

  Widget _buildBanner() {
    return ImageContainer(
      height: 200,
      url: restaurant.imageUrl,
    );
  }

  Widget _buildDetails(BuildContext context) {
    final style = TextStyle(fontSize: 16);

    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'Price: ${restaurant.priceDisplay}',
            style: style,
          ),
          SizedBox(width: 40),
          Text(
            'Rating: ${restaurant.rating.average}',
            style: style,
          ),
        ],
      ),
    );
  }

  /// 1)
  /// Il widget utilizza lo stream dei preferiti per determinare se questo ristorante
  /// è preferito e quindi esegue il rendering del widget appropriato.
  Widget _buildFavoriteButton(BuildContext context) {
    final bloc = BlocProvider.of<FavoriteBloc>(context);
    return StreamBuilder<List<Restaurant>>(
      stream: bloc.favoritesStream,
      initialData: bloc.favorites,
      builder: (context, snapshot) {
        List<Restaurant> favorites =
            (snapshot.connectionState == ConnectionState.waiting)
                ? bloc.favorites
                : snapshot.data;
        bool isFavorite = favorites.contains(restaurant);

        /// 2)
        /// La funzione toggleRestaurant in FavoriteBloc è scritta in modo che
        /// la UI non ha bisogno di conoscere lo stato del ristorante.
        /// Lo aggiunge solo se non è nell'elenco o lo rimuove se lo è.
        return FlatButton.icon(
          onPressed: () => bloc.toggleRestaurant(restaurant),
          textColor: isFavorite ? Theme.of(context).accentColor : null,
          icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
          label: Text('Favorite'),
        );
      },
    );
  }
}