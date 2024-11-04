import 'package:c2s/data/json_data/post_entries_request_data.dart';
import 'package:c2s/data/remote/api_service.dart';
import 'package:c2s/domain/repositories/abstract_entries_repo.dart';
import '../json_data/entries_response_data.dart';
import '../json_data/get_entry_response_data/get_entry_response_data.dart';
import '../json_data/post_entries_response_data.dart';

class EntriesRepoImpl implements AbstractEntriesRepo {
  final ApiService _apiService;

  EntriesRepoImpl(this._apiService);

  @override
  Future<EntriesResponseData?> getEntries(String token) async {
    EntriesResponseData? entriesResponse;
    entriesResponse = await _apiService.getEntries(token);
    return entriesResponse;
  }

  @override
  Future<GetEntryResponseData> getEntry(String token, String id) async {
    GetEntryResponseData? entryResponse;
    entryResponse = await _apiService.getEntry(token, id);
    return entryResponse;
  }

  @override
  Future<void> patchEntry(
      String token, String id, Map<String, dynamic> patchData) async {
    await _apiService.patchEntry(id, token, patchData);
  }

  @override
  Future<String> postEntry(
      String token, PostEntriesRequestData postEntriesRequestData) async {
    PostEntriesResponseData postEntriesResponseData;
    postEntriesResponseData =
        await _apiService.postEntry(token, postEntriesRequestData);
    return postEntriesResponseData.data.id;
  }
}
