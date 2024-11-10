import 'package:c2s/data/models/get_all_entries_models/get_entries_response_data/get_entries_response_data.dart';
import 'package:c2s/data/models/logout_response_data/logout_response_data.dart';
import 'package:c2s/data/models/post_entries_models/post_entries_request_data/post_entries_request_data.dart';
import 'package:c2s/data/models/post_entries_models/post_entries_response_data/post_entries_response_data.dart';
import 'package:c2s/data/models/user_models/response_user/user_response_data/user_response_data.dart';
import 'package:c2s/data/models/user_models/request_user/user_request_data/user_request_data.dart';

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../models/get_entry_models/get_entry_response_data/get_entry_response_data.dart';
import 'package:c2s/constants.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: kBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(kLoginEndpoint)
  Future<UserResponseData> login(@Body() UserRequestData user);

  @DELETE(kLogoutEndpoint)
  Future<LogoutResponseData> logout(@Header(kAuth) String token);

  @GET(kGetEntriesEndpoint)
  Future<EntriesResponseData> getEntries(
    @Header(kAuth) String token,
    @Query(kCreatedBy) String createdBy,
    @Query(kPerPage) int perPage,
    @Query(kPage) int page,
  );

  @GET(kGetEntryEndpoint)
  Future<GetEntryResponseData> getEntry(
    @Header(kAuth) String token,
    @Path(kId) String id,
  );

  @POST(kPostEntryEndpoint)
  Future<PostEntriesResponseData> postEntry(@Header(kAuth) String token,
      @Body() PostEntriesRequestData postEntriesRequestData);

  @PATCH(kPatchEntryEndpoint)
  Future patchEntry(@Path(kId) String id, @Header(kAuth) String token,
      @Body() dynamic patchData);
}
