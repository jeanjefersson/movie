import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie/models/movie_models.dart';

const String apiurl =
    'https://api.themoviedb.org/3/movie/popular?api_key=51e396e054534745f7440461c61c0e42&language=pt-BR';

Future<MoviesData> fetchMovie() async {
  final response = await http.get(apiurl);

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return MoviesData.fromJson(
      json.decode(response.body),
      //print(json.decode(response.body)),
    );
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load movie');
  }
}
