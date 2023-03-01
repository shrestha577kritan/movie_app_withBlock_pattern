
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_bloc_pattern/model/movie_model.dart';

// movie state 
@immutable
abstract class MovieState extends Equatable {}

//data loading state
class MovieLoadingState extends MovieState {
  @override
  List<Object?> get props => [];
}

//data loaded state 
class MovieLoadedState extends MovieState {
  final List<MovieModel> movies;
  MovieLoadedState(this.movies);
  @override
  List<Object?> get props => [movies];
}


//data loading error state 
class MovieErrorState extends MovieState {
  final String error;
  MovieErrorState(this.error);
  @override
  List<Object?> get props => [error];
}




