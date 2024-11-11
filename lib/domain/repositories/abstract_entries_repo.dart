import '../../data/models/get_all_entries_models/get_entries_response_data/get_entries_response_data.dart';
import '../../data/models/get_entry_models/get_entry_response_data/get_entry_response_data.dart';
import '../../data/models/post_entries_models/post_entries_request_data/post_entries_request_data.dart';

abstract class AbstractEntriesRepo {
  Future<String> postEntry(
      String token, PostEntriesRequestData postEntriesRequestData);

  Future<void> patchEntry(String token, String id, dynamic patchData);

  Future<EntriesResponseData?> getEntries(String token);

  Future<GetEntryResponseData> getEntry(String token, String id);
}
