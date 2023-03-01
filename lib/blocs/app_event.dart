import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

// events for movies 
// equatable class helps us to see the events 

@immutable
abstract class MovieEvent extends Equatable {
  const MovieEvent();
}

class LoadMovieEvent extends MovieEvent {
  @override
  List<Object?> get props => [];
}