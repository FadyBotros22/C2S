import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_user.freezed.dart';
part 'response_user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String userName,
    required String name,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
