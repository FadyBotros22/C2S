import 'package:c2s/data/get_entry_response_data.dart';
import 'package:c2s/data/patch%20data/patch_air_sealing_data.dart';
import 'package:c2s/data/patch%20data/patch_attic_insulation_data.dart';
import 'package:c2s/data/patch%20data/patch_final_walkthrough_data.dart';
import 'package:c2s/data/patch%20data/patch_initial_walk_through_data.dart';
import 'package:c2s/data/patch%20data/patch_wall_insulation_data.dart';
import 'package:c2s/data/post_entries_request_data.dart';
import 'package:c2s/data/entries_response_data.dart';
import 'package:c2s/data/logout_response_data.dart';
import 'package:c2s/data/post_entries_response_data.dart';
import 'package:c2s/data/user_response_data.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'data/user_request_data.dart';
import 'data/patch data/patch_base_data.dart';

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
  Future patchBase(@Path('id') String id, @Header('Authorization') String token,
      @Body() PatchBaseData patchBaseData);

  @PATCH("/entries/{id}")
  Future patchInitial(
      @Path('id') String id,
      @Header('Authorization') String token,
      @Body() PatchInitialWalkThroughData patchInitialWalkThroughData);

  @PATCH("/entries/{id}")
  Future patchAirSealing(
      @Path('id') String id,
      @Header('Authorization') String token,
      @Body() PatchAirSealingData patchAirSealingData);

  @PATCH("/entries/{id}")
  Future patchAtticInsulation(
      @Path('id') String id,
      @Header('Authorization') String token,
      @Body() PatchAtticInsulationData patchAtticInsulationData);

  @PATCH("/entries/{id}")
  Future patchWallInsulation(
      @Path('id') String id,
      @Header('Authorization') String token,
      @Body() PatchWallInsulationData patchWallInsulationData);

  @PATCH("/entries/{id}")
  Future patchFinal(
      @Path('id') String id,
      @Header('Authorization') String token,
      @Body() PatchFinalWalkthroughData patchFinalWalkthroughData);
}
