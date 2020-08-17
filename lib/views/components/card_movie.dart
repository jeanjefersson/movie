import 'package:flutter/material.dart';
import 'package:movie/views/pages/movie_page.dart';

class CardMovie extends StatelessWidget {
  String moviename;
  String imagepath;
  String imagecover;
  String overviewmovie;
  String releasedate;
  CardMovie({
    Key key,
    this.moviename,
    this.imagepath,
    this.imagecover,
    this.overviewmovie,
    this.releasedate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PostPage(
              movietitle: moviename,
              imagecover: imagecover,
              overviewmovie: overviewmovie,
              releasedate: releasedate,
            ),
          ),
        ),
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  alignment: Alignment.center,
                  height: 300,
                  width: 150,
                  child: Image.network(
                      "https://image.tmdb.org/t/p/w500" + imagepath)),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text(
                  moviename,
                  textScaleFactor: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
