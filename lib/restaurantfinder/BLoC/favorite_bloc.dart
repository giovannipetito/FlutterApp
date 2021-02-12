import 'dart:async';
import 'package:flutter_app/restaurantfinder/DataLayer/restaurant.dart';
import 'bloc.dart';

class FavoriteBloc implements Bloc {
  var _restaurants = <Restaurant>[];
  List<Restaurant> get favorites => _restaurants;

  /// FavoriteBloc utilizza un Broadcast StreamController invece di un normale
  /// StreamController. I Broadcast streams (flussi di trasmissione) consentono
  /// più listeners (ascoltatori), mentre i flussi regolari ne consentono solo uno.
  /// Per i due blocchi precedenti non erano necessari più flussi poiché esisteva
  /// solo una relazione uno a uno. Per la feature dei preferiti, l'app deve ascoltare
  /// lo streaming in due punti, quindi è necessaria la trasmissione (broadcast).
  final _controller = StreamController<List<Restaurant>>.broadcast();

  void toggleRestaurant(Restaurant restaurant) {
    if (_restaurants.contains(restaurant)) {
      _restaurants.remove(restaurant);
    } else {
      _restaurants.add(restaurant);
    }

    _controller.sink.add(_restaurants);
  }

  Stream<List<Restaurant>> get favoritesStream => _controller.stream;

  @override
  void dispose() {
    _controller.close();
  }
}
