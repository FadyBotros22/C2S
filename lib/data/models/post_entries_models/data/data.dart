import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../presentation/screens/form screens/form_screen1.dart';
import '../../coordinates/coordinates.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  const factory Data({
    required String id,
    required String createdBy,
    required String jobId,
    required int progressStep,
    required DateTime date,
    required ProgramType programType,
    required String address,
    required String city,
    required Coordinates coordinates,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
