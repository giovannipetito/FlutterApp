import 'package:flutter/material.dart';
import 'bloc.dart';

/// Iniezione di BLoC nell'albero dei widget (Widget Tree)
/// BlocProvider ha il compito di iniettare i bloc (LocationBloc, LocationQueryBloc,
/// ecc...) nell'albero dei widget di Flutter. È diventata una convenzione Flutter
/// chiamare questi tipi di fornitori (providers) di widget. Un provider è un widget
/// che memorizza i dati e li "fornisce" a tutti i suoi figli.
/// Normalmente questo sarebbe un lavoro per InheritedWidget, ma poiché i BLoC devono
/// essere eliminati (col metodo dispose()), StatefulWidget fornirà lo stesso servizio.
/// La sintassi è un po' più complessa, ma il risultato è lo stesso.

/// 1)
/// BlocProvider è una classe generica. Il tipo generico T è definito come un oggetto
/// che implementa l'interfaccia Bloc. Ciò significa che il provider può memorizzare
/// solo oggetti BLoC.
class BlocProvider<T extends Bloc> extends StatefulWidget {

  final Widget child;
  final T bloc;

  const BlocProvider({Key key, @required this.bloc, @required this.child})
      : super(key: key);

  /// 2)
  /// Il metodo of consente ai widget di recuperare il BlocProvider da un discendente
  /// nell'albero dei widget con il context della build corrente. Questo è un modello
  /// molto comune in Flutter.
  static T of<T extends Bloc>(BuildContext context) {
    final type = _providerType<BlocProvider<T>>();
    // ignore: deprecated_member_use
    final BlocProvider<T> provider = context.ancestorWidgetOfExactType(type);
    return provider.bloc;
  }

  /// 3)
  /// Questo è un trampolino per ottenere un riferimento al tipo generico.
  static Type _providerType<T>() => T;

  @override
  State createState() => _BlocProviderState();
}

class _BlocProviderState extends State<BlocProvider> {

  /// 4)
  /// Il metodo di creazione del widget è un passaggio per il figlio del widget.
  /// Questo widget non renderizzerà nulla.
  @override
  Widget build(BuildContext context) => widget.child;

  /// 5)
  /// Infine, l'unico motivo per cui il provider eredita da StatefulWidget è ottenere
  /// l'accesso al metodo dispose. Quando questo widget viene rimosso dall'albero,
  /// Flutter chiamerà il metodo dispose, che a sua volta chiuderà lo stream.
  @override
  void dispose() {
    widget.bloc.dispose();
    super.dispose();
  }
}