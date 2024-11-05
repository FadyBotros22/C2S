import 'package:c2s/data/remote/api_service.dart';
import 'package:c2s/domain/repositories/abstract_entries_repo.dart';
import 'package:c2s/data/models/get_all_entries_models/get_entries_response_data/get_entries_response_data.dart';
import 'package:c2s/data/models/post_entries_models/post_entries_response_data/post_entries_response_data.dart';
import '../models/get_entry_models/get_entry_response_data/get_entry_response_data.dart';

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
      String token, Map<String, dynamic> postEntriesRequestData) async {
    PostEntriesResponseData postEntriesResponseData;
    postEntriesResponseData =
        await _apiService.postEntry(token, postEntriesRequestData);
    return postEntriesResponseData.data.id;
  }
}
