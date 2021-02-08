import 'package:flutter/material.dart';
import 'package:flutter_app/screens/animation3/same_variable_multiple_animations.dart';
import 'package:flutter_app/screens/animation3/sequence_page.dart';
import 'package:flutter_app/screens/animation3/staggered_animation_replication.dart';

class AnimationScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeAnimationPage(),
      routes: {
        'sequence': (_) => SequencePage(),
        'StaggeredAnimationReplication': (_) => StaggeredAnimationReplication(),
        'SameVariableAnimationPage': (_) => SameVariableAnimationPage(),
      },
    );
  }
}

class HomeAnimationPage extends StatefulWidget {
  @override
  _HomeAnimationPageState createState() => new _HomeAnimationPageState();
}

class _HomeAnimationPageState extends State<HomeAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Examples"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'sequence');
                },
                child: Text("Sequence"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'StaggeredAnimationReplication');
                },
                child: Text("StaggeredAnimationReplication"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'SameVariableAnimationPage');
                },
                child: Text("SameVariableAnimationPage"),
              ),
            ],
          ),
        ));
  }
}
