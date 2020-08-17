import 'package:flutter/material.dart';
import 'package:movie/views/components/listview_movies.dart';
import 'package:movie/views/pages/movie_page.dart';

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Movie",
      routes: {
        '/moviepage': (context) => PostPage(),
      },
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('FILMES LEGAIS'),
        ),
        body: Center(
          child: MoviesListView(),
        ),
      ),
    );
  }
}
