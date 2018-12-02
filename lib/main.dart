import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomwordsState extends State<Randomwords> {
    @override
      Widget build(BuildContext context){
        final Wordmixer = new WordPair.random();
        return new Text(Wordmixer.asPascalCase);

      }
}

class Randomwords extends StatefulWidget{
  @override
  RandomwordsState createState() => new RandomwordsState();

}

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return new MaterialApp(
      title: 'Welcome to Word Mixer',
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Welcome to Word Mixer App'),
        ),
        body: new Center(
          child: new Randomwords(),
          

        ),
      ),
    );
  }
}