import 'dart:async';
import 'package:flutter_app/restaurantfinder/DataLayer/location.dart';
import 'bloc.dart';

/// Questo BLoC è responsabile della gestione della location selezionata dell'app,
/// in particolare si occupa della archiviazione e segnalazione delle locations.
class LocationBloc implements Bloc {

  Location _location;
  Location get selectedLocation => _location;

  /// 1)
  /// Qui viene dichiarato uno StreamController privato che gestirà lo stream e il
  /// sink per questo BLoC. Gli StreamControllers utilizzano generics per indicare
  /// al type system che tipo di oggetto verrà emesso dallo stream.
  final _locationController = StreamController<Location>();

  /// 2)
  /// Questa funzione rappresenta l'ingresso per il BLoC. Un oggetto del model Location
  /// verrà fornito come parametro che viene memorizzato nella cache nella proprietà
  /// _location privata dell'oggetto e quindi aggiunto al sink per lo stream.
  void selectLocation(Location location) {
    _location = location;
    _locationController.sink.add(location);
  }

  /// 3)
  /// Questa riga espone un getter pubblico al flusso (stream) di StreamController.
  Stream<Location> get locationStream => _locationController.stream;

  /// 4)
  /// Infine, nel metodo clean up, StreamController viene chiuso quando questo oggetto
  /// viene deallocato. Se non lo fai, l'IDE si lamenterà che lo StreamController è in
  /// memory leaking.
  @override
  void dispose() {
    _locationController.close();
  }
}
