import 'package:freezed_annotation/freezed_annotation.dart';

import '../initial_walkthrough_checklist/initial_walkthrough_checklist.dart';
part 'initial_walkthrough.freezed.dart';
part 'initial_walkthrough.g.dart';

@freezed
class InitialWalkthrough with _$InitialWalkthrough {
  const factory InitialWalkthrough({
    InitialWalkthroughChecklist? checklist,
    bool? blowerDoorStatus,
    int? blowerStartingValue,
    String? startingBlowerDoorPic,
    String? notes,
    String? heatingSystemPic,
    String? waterHeaterPic,
    List<String>? concernsPic,
  }) = _InitialWalkthrough;

  factory InitialWalkthrough.fromJson(Map<String, dynamic> json) =>
      _$InitialWalkthroughFromJson(json);
}
