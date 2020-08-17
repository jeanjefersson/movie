import 'package:flutter/material.dart';
import 'package:movie/controllers/api_get.dart';
import 'package:movie/models/movie_models.dart';
import 'package:movie/views/components/card_movie.dart';

class MoviesListView extends StatefulWidget {
  MoviesListView({
    Key key,
  }) : super(key: key);

  @override
  _MoviesListViewState createState() => _MoviesListViewState();
}

class _MoviesListViewState extends State<MoviesListView> {
  Future<MoviesData> futureMovie;

  @override
  void initState() {
    super.initState();
    futureMovie = fetchMovie();
  }

  Widget build(BuildContext context) {
    return FutureBuilder<MoviesData>(
      future: futureMovie,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return CardMovie(
                moviename: snapshot.data.results[index].title,
                imagepath: snapshot.data.results[index].posterPath,
                imagecover: snapshot.data.results[index].backdropPath,
                overviewmovie: snapshot.data.results[index].overview,
                releasedate: snapshot.data.results[index].releaseDate,
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
