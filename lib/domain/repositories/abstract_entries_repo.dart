import 'package:c2s/data/models/get_all_entries_models/get_entries_response_data/get_entries_response_data.dart';
import 'package:c2s/data/models/post_entries_models/post_entries_request_data/post_entries_request_data.dart';
import '../../data/models/get_entry_models/get_entry_response_data/get_entry_response_data.dart';

abstract class AbstractEntriesRepo {
  Future<String> postEntry(
      String token, Map<String, dynamic> postEntriesRequestData);

  Future<void> patchEntry(
      String token, String id, Map<String, dynamic> patchData);

  Future<EntriesResponseData?> getEntries(String token);

  Future<GetEntryResponseData> getEntry(String token, String id);
}
