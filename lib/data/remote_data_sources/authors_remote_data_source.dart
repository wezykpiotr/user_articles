import 'package:dio/dio.dart';
import 'package:user_articles/domain/models/author_model.dart';
import 'package:retrofit/retrofit.dart';
part 'authors_remote_data_source.g.dart';

@RestApi(baseUrl: "https://my-json-server.typicode.com/adamsmaka/json-demo")
abstract class AuthorsRemoteRetroFitDataSource {
  factory AuthorsRemoteRetroFitDataSource(Dio dio, {String baseUrl}) =
      _AuthorsRemoteRetroFitDataSource;

  @GET("/users")
  Future<List<AuthorModel>> getAuthors();
}
