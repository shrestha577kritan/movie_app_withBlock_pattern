// ignore_for_file: public_member_api_docs, sort_constructors_first
class MovieModel {
  String image;
  MovieModel({
    required this.image,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(image: 'https://image.tmdb.org/t/p/w600_and_h900_bestv2${json['backdrop_path']}', );
  }
}
