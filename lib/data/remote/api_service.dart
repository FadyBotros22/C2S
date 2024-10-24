import 'package:c2s/data/json_data/get_entry_response_data.dart';
import 'package:c2s/data/json_data/post_entries_request_data.dart';
import 'package:c2s/data/json_data/entries_response_data.dart';
import 'package:c2s/data/json_data/logout_response_data.dart';
import 'package:c2s/data/json_data/post_entries_response_data.dart';
import 'package:c2s/data/json_data/user_response_data.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../json_data/user_request_data.dart';
part 'api_service.g.dart'; // Ensure this part directive is present

@RestApi(baseUrl: "http://3.21.176.77/v1/")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST("/auth/login")
  Future<UserResponseData> login(@Body() UserRequestData user);

  @DELETE("/auth/logout")
  Future<LogoutResonseData> logout(@Header('Authorization') String token);

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
      @Body() PostEntriesRequestData postEntriesRequestData);

  @PATCH("/entries/{id}")
  Future patchEntry(
      @Path('id') String id,
      @Header('Authorization') String token,
      @Body() Map<String, dynamic> patchData);
}
