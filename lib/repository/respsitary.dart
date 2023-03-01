import 'dart:convert';

import 'package:http/http.dart';
import 'package:movie_app_bloc_pattern/Api_endpoit/api.dart';
import 'package:movie_app_bloc_pattern/model/movie_model.dart';


// class to fetach the data from endpoing
class MovieRepository {
  Future<List<MovieModel>> getUsers() async {
    Response response = await get(Uri.parse(Api.mvovie));
// checking the end point to see the data
    if (response.statusCode == 200) {

      final List result = jsonDecode(response.body)['results'];
      return result.map((e) => MovieModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
