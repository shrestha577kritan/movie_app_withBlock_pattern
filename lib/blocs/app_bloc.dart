
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app_bloc_pattern/blocs/app_event.dart';
import 'package:movie_app_bloc_pattern/blocs/app_state.dart';
import 'package:movie_app_bloc_pattern/repository/respsitary.dart';


// mvoe bloc 


class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final MovieRepository _userRepository;

  MovieBloc(this._userRepository) : super(MovieLoadingState()) {
    on<LoadMovieEvent>((event, emit) async {
      emit(MovieLoadingState());
      try {
        final movies = await _userRepository.getUsers();
        emit(MovieLoadedState(movies));
      } catch (e) {
        emit(MovieErrorState(e.toString()));
      }
    });
  }
}
