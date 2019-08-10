import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transition Demo',
      home: MainScreen(),
    );
  }
}

Hero heroImage = Hero(
  tag: 'imageHero',
  child: Image.network('https://picsum.photos/id/1015/600/400'),
);

Image heroImage1 = Image.network('https://picsum.photos/id/1015/600/400');

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
      ),
      body: GestureDetector(
        child: heroImage,
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DetailPage()));
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: heroImage,
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
