import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  String movietitle;
  String imagecover;
  String releasedate;
  String overviewmovie;
  PostPage({
    this.movietitle,
    this.imagecover,
    this.releasedate,
    this.overviewmovie,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filmes'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                movietitle,
                textScaleFactor: 2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(),
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 800,
                    maxWidth: 800,
                  ),
                  child: Container(
                    child: Image.network(
                        "https://image.tmdb.org/t/p/w500" + imagecover),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Lançamento " + releasedate,
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              Text(
                overviewmovie,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
