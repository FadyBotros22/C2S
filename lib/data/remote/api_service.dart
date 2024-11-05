import 'package:c2s/data/models/get_all_entries_models/get_entries_response_data/get_entries_response_data.dart';
import 'package:c2s/data/models/logout_response_data/logout_response_data.dart';
import 'package:c2s/data/models/post_entries_models/post_entries_response_data/post_entries_response_data.dart';
import 'package:c2s/data/models/user_models/response_user/user_response_data/user_response_data.dart';
import 'package:c2s/data/models/user_models/request_user/user_request_data/user_request_data.dart';

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../models/get_entry_models/get_entry_response_data/get_entry_response_data.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: "http://3.21.176.77/v1/")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST("/auth/login")
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
  })
  Future<UserResponseData> login(@Body() UserRequestData user);

  @DELETE("/auth/logout")
  Future<LogoutResponseData> logout(@Header('Authorization') String token);

  @GET("/entries?createdBy=all&perPage=10&page=1")
  Future<EntriesResponseData> getEntries(@Header('Authorization') String token);

  @GET("/entries/{id}")
  Future<GetEntryResponseData> getEntry(
    @Header('Authorization') String token,
    @Path('id') String id,
  );

  @POST("/entries")
  Future<PostEntriesResponseData> postEntry(
      @Header('Authorization') String token,
      @Body() Map<String, dynamic> postEntriesRequestData);

  @PATCH("/entries/{id}")
  Future patchEntry(
      @Path('id') String id,
      @Header('Authorization') String token,
      @Body() Map<String, dynamic> patchData);
}
