import 'package:freezed_annotation/freezed_annotation.dart';

import '../../coordinates/coordinates.dart';
import '../air_sealing/air_sealing.dart';
import '../attic_insulation/attic_insulation.dart';
import '../final_walkthrough/final_walkthrough.dart';
import '../initial_walkthrough/initial_walkthrough.dart';
import '../wall_insulation/wall_insulation.dart';

part 'get_entry_data.freezed.dart';
part 'get_entry_data.g.dart';

@freezed
class Data with _$Data {
  const factory Data({
    String? id,
    String? programType,
    bool? doeJob,
    String? address,
    String? city,
    Coordinates? coordinates,
    String? createdBy,
    String? jobId,
    int? progressStep,
    String? date,
    InitialWalkthrough? initialWalkthrough,
    AirSealing? airSealing,
    AtticInsulation? atticInsulation,
    WallInsulation? wallInsulation,
    FinalWalkthrough? finalWalkthrough,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
