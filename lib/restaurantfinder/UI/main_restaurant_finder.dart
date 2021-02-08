import 'package:flutter/material.dart';
import 'package:flutter_app/restaurantfinder/BLoC/bloc_provider.dart';
import 'package:flutter_app/restaurantfinder/BLoC/favorite_bloc.dart';
import 'package:flutter_app/restaurantfinder/BLoC/location_bloc.dart';

import 'main_screen.dart';

/// Come collegare la schermata della location
/// Ora che hai completato il tuo livello BLoC per la ricerca di locations, è il
/// momento di utilizzare il livello.
/// Innanzitutto, in main.dart (o in questo caso, in main_restaurant_finder.dart),
/// inserisci un BlocProvider di tipo LocationBloc e crea un LocationBloc nella
/// property del bloc.
/// Tale LocationBloc (sopra MaterialApp) serve a memorizzare lo stato dell'app.
/// L'aggiunta di widget sopra MaterialApp è un ottimo modo per aggiungere dati
/// a cui è necessario accedere da più screens.

class RestaurantFinder extends StatelessWidget {

  static const String id = 'main_restaurant_finder';

  /// Questo BLoC deve essere accessibile da più screens, il che significa che
  /// deve essere posizionato sopra il navigatore. È per questo che MaterialApp
  /// è wrappato da due provider, uno per LocationBloc e l'altro per FavoriteBloc.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocationBloc>(
      bloc: LocationBloc(),
      child: BlocProvider<FavoriteBloc>(
        bloc: FavoriteBloc(),
        child: MaterialApp(
          title: 'Restaurant Finder',
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          home: MainScreen(),
        ),
      ),
    );
  }
}
