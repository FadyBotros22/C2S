import 'package:c2s/data/json_data/get_entry_response_data.dart';
import 'package:flutter/cupertino.dart';

import '../../data/json_data/entries_response_data.dart';

abstract class AbstractGetEntriesRepo {
  Future<EntriesResponseData?> getEntries(BuildContext context, String token);
  Future<GetEntryResponseData> getEntry(
      BuildContext context, String token, String id);
}
