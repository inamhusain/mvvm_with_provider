import '../data/network/network_api_services.dart';
import '../models/movies.dart';
import '../res/app_url.dart';

class HomeRepository {
  final NetworkApiServices _apiServices = NetworkApiServices();

  Future<Movies> getMovie() async {
    try {
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrl.moviesPopularMovie);
      return response = Movies.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }

  Future<Movies> getUpComingMovie() async {
    try {
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrl.moviesUpComingMovie);
      return response = Movies.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }

  Future<Movies> getTopRatedMovie() async {
    try {
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrl.moviesTopRatedMovie);
      return response = Movies.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
