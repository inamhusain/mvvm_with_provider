import 'package:flutter/cupertino.dart';

import '../data/response/api_response.dart';
import '../models/movies.dart';
import '../repository/home_repository.dart';

class HomeViewViewModel with ChangeNotifier {
  final _popularMovieRepo = HomeRepository();
  final _upComingMovieRepo = HomeRepository();
  final _topRateMovieRepo = HomeRepository();

  ApiResponse<Movies> moviesList = ApiResponse.loading();

  ApiResponse<Movies> upComingList = ApiResponse.loading();
  ApiResponse<Movies> topRatedList = ApiResponse.loading();

  setMoviesList(ApiResponse<Movies> response) {
    moviesList = response;
    upComingList = response;
    topRatedList = response;
    notifyListeners();
  }

  Future<void> fetchMoviesListApi() async {
    await _popularMovieRepo.getMovie().then((value) {
      setMoviesList(ApiResponse.completed(value));
    }).onError((error, stackTrace) =>
        setMoviesList(ApiResponse.error(error.toString())));
  }

  Future<void> fetchUpComingListApi() async {
    await _upComingMovieRepo.getUpComingMovie().then((value) {
      setMoviesList(ApiResponse.completed(value));
    }).onError((error, stackTrace) =>
        setMoviesList(ApiResponse.error(error.toString())));
  }

  Future<void> fetchTopRateListApi() async {
    await _topRateMovieRepo.getTopRatedMovie().then((value) {
      setMoviesList(ApiResponse.completed(value));
    }).onError((error, stackTrace) =>
        setMoviesList(ApiResponse.error(error.toString())));
  }
}
