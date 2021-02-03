import 'dart:async';

import 'package:flutter_app/restaurantfinder/DataLayer/location.dart';
import 'package:flutter_app/restaurantfinder/DataLayer/restaurant.dart';
import 'package:flutter_app/restaurantfinder/DataLayer/zomato_client.dart';

import 'bloc.dart';

class RestaurantBloc implements Bloc {

  final Location location;
  final _client = ZomatoClient();
  final _controller = StreamController<List<Restaurant>>();

  Stream<List<Restaurant>> get stream => _controller.stream;
  RestaurantBloc(this.location);

  void submitQuery(String query) async {
    final results = await _client.fetchRestaurants(location, query);
    _controller.sink.add(results);
  }

  @override
  void dispose() {
    _controller.close();
  }
}
