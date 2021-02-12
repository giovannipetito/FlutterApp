import 'package:flutter/material.dart';
import 'package:flutter_app/restaurantfinder/BLoC/bloc_provider.dart';
import 'package:flutter_app/restaurantfinder/BLoC/location_bloc.dart';
import 'package:flutter_app/restaurantfinder/DataLayer/location.dart';
import 'package:flutter_app/restaurantfinder/UI/restaurant_screen.dart';

import 'location_screen.dart';

/// I widget StreamBuilder ascoltano automaticamente gli eventi dallo stream.
/// Quando viene ricevuto un nuovo evento, verrà eseguita la chiusura del builder,
/// aggiornando l'albero dei widget. Con StreamBuilder e il pattern BLoC, non è
/// necessario chiamare il metodo setState().

class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Location>(

      /// Per la property stream, utilizzare il metodo of per recuperare
      /// LocationBloc e aggiungere il relativo stream a questo StreamBuilder.
      stream: BlocProvider.of<LocationBloc>(context).locationStream,
      builder: (context, snapshot) {
        final location = snapshot.data;

        /// Inizialmente il flusso non ha dati, il che è perfettamente normale.
        /// Se non ci sono dati nello stream, l'app restituirà LocationScreen.
        if (location == null) {
          return LocationScreen();
        }

        return RestaurantScreen(location: location);
      }
    );
  }
}