import 'package:flutter/material.dart';
import 'package:flutter_app/restaurantfinder/BLoC/bloc_provider.dart';
import 'package:flutter_app/restaurantfinder/BLoC/location_bloc.dart';
import 'package:flutter_app/restaurantfinder/BLoC/location_query_bloc.dart';
import 'package:flutter_app/restaurantfinder/DataLayer/location.dart';

/// MainScreen chiama LocationScreen in location_screen.dart che viene aggiornato
/// utilizzando LocationQueryBloc creato in precedenza. L'utilizzo degli strumenti
/// di wrapping dei widget dell'IDE semplificano l'aggiornamento del codice.
class LocationScreen extends StatelessWidget {

  /// Il booleano è un flag (il cui valore predefinito è false) che verrà utilizzato
  /// in seguito per aggiornare il comportamento di navigazione quando viene tappata
  /// una posizione.
  final bool isFullScreenDialog;

  const LocationScreen({Key key, this.isFullScreenDialog = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    /// 1)
    /// Innanzitutto, l'app crea un'istanza di un nuovo LocationQueryBloc
    /// all'inizio del metodo di compilazione build.
    final bloc = LocationQueryBloc();

    /// 2)
    /// Il BLoC viene quindi archiviato in un BlocProvider che ne gestirà il ciclo di vita.
    return BlocProvider<LocationQueryBloc>(
      bloc: bloc,
      child: Scaffold(
        appBar: AppBar(title: Text('Where do you want to eat?')),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter a location'),
                /// 3)
                /// Aggiorna la chiusura di onChanged del widget TextField per
                /// inviare il testo a LocationQueryBloc. Questo darà il via alla
                /// catena di chiamate su Zomato che quindi invierà allo stream
                /// le locations trovate.
                onChanged: (query) => bloc.submitQuery(query),
              ),
            ),
            /// 4)
            /// Passa il bloc al metodo _buildResults.
            Expanded(
              child: _buildResults(bloc),
            )
          ],
        ),
      ),
    );
  }

  /// Ora aggiorna il metodo _buildResults per aggiungere uno stream builder e
  /// mostrare i risultati in un elenco. Puoi utilizzare il comando "Wrap with
  /// StreamBuilder" per aggiornare il codice più velocemente.
  Widget _buildResults(LocationQueryBloc bloc) {
    return StreamBuilder<List<Location>>(
      stream: bloc.locationStream,
      builder: (context, snapshot) {
        /// 1)
        /// Ci sono tre condizioni che potrebbero essere restituite dal flusso.
        /// Non potrebbero esserci dati, il che significa che l'utente non ha
        /// digitato nulla. Potrebbe esserci una lista vuota, il che significa
        /// che Zomato non è riuscita a trovare quello che stavi cercando.
        /// Infine, può esserci un elenco completo di ristoranti.
        final results = snapshot.data;

        if (results == null) {
          return Center(child: Text('Enter a location'));
        }

        if (results.isEmpty) {
          return Center(child: Text('No Results'));
        }

        return _buildSearchResults(results);
      },
    );
  }

  Widget _buildSearchResults(List<Location> results) {
    /// 2)
    /// Qui l'app mostra l'elenco delle locations. Questa funzione si comporta
    /// proprio come il normale codice dichiarativo Flutter.
    return ListView.separated(
      itemCount: results.length,
      separatorBuilder: (BuildContext context, int index) => Divider(),
      itemBuilder: (context, index) {
        final location = results[index];
        return ListTile(
          title: Text(location.title),
          onTap: () {
            /// 3)
            /// Nella chiusura onTap, l'app recupera il LocationBloc che risiede
            /// alla radice dell'albero e gli comunica che l'utente ha selezionato
            /// una location. Toccando una card per ora l'intero schermo diventerà nero.
            final locationBloc = BlocProvider.of<LocationBloc>(context);
            locationBloc.selectLocation(location);

            if (isFullScreenDialog) {
              Navigator.of(context).pop();
            }
          },
        );
      },
    );
  }
}