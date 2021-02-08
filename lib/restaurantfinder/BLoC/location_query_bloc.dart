import 'dart:async';

import 'package:flutter_app/restaurantfinder/DataLayer/location.dart';
import 'package:flutter_app/restaurantfinder/DataLayer/zomato_client.dart';

import 'bloc.dart';

/// Questo Bloc incapsula una chiamata API.
class LocationQueryBloc implements Bloc {

  final _controller = StreamController<List<Location>>();
  final _client = ZomatoClient();

  /// Nell'input del BLoC, il metodo submitQuery accetta una stringa e utilizza la
  /// classe ZomatoClient dal progetto iniziale (starter project) per recuperare
  /// le locations dall'API. Questo utilizza la sintassi async / await di Dart per
  /// rendere il codice un po' più pulito. I risultati vengono quindi pubblicati nello stream.
  void submitQuery(String query) async {
    final results = await _client.fetchLocations(query);
    _controller.sink.add(results);
  }

  Stream<List<Location>> get locationStream => _controller.stream;

  @override
  void dispose() {
    _controller.close();
  }
}
