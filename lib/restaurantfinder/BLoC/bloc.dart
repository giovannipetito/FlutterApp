// L'anatomia di un BLoC
// Il pattern BLoC è in realtà solo un'interfaccia per i flussi (streams) di Dart:
// Gli Streams, come i Futures, sono forniti dal pacchetto dart: async. Uno stream
// è come un Future, ma invece di restituire un singolo valore in modo asincrono,
// gli streams possono produrre più valori nel tempo. Se un Future è un valore che
// verrà fornito alla fine, uno stream di una serie di valori verrà fornito
// sporadicamente nel tempo.
// Il pacchetto dart: async fornisce un oggetto chiamato StreamController.
// Gli StreamController sono oggetti manager che istanziano sia uno stream che un sink.
// Un sink è l'opposto di uno stream. Se uno stream produce valori di output nel
// tempo, un sink accetta i valori di input nel tempo.

// Per riassumere, i BLoC sono oggetti che elaborano e memorizzano la business logic,
// utilizzano i sink per accettare l'input e forniscono l'output tramite streams.

// Tutte le tue classi BLoC saranno conformi a questa interfaccia. L'interfaccia
// non fa molto se non costringerti ad aggiungere il metodo dispose. Un piccolo
// avvertimento che deve essere tenuto presente con i flussi è che devono essere
// chiusi quando non sono più necessari, altrimenti può causare una perdita di
// memoria (memory leak). Il metodo di smaltimento è dove l'app verificherà questo.
// Il primo BLoC sarà responsabile della gestione della posizione selezionata dell'app.

abstract class Bloc {
  void dispose();
}
