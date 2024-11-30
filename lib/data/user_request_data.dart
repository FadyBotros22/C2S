// To parse this JSON data, do
//
//     final userRequestData = userRequestDataFromJson(jsonString);

import 'dart:convert';

UserRequestData userRequestDataFromJson(String str) =>
    UserRequestData.fromJson(json.decode(str));

String userRequestDataToJson(UserRequestData data) =>
    json.encode(data.toJson());

class UserRequestData {
  User user;
  Device device;

  UserRequestData({
    required this.user,
    required this.device,
  });

  factory UserRequestData.fromJson(Map<String, dynamic> json) =>
      UserRequestData(
        user: User.fromJson(json["user"]),
        device: Device.fromJson(json["device"]),
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "device": device.toJson(),
      };
}

class Device {
  String deviceId;
  String os;

  Device({
    required this.deviceId,
    required this.os,
  });

  factory Device.fromJson(Map<String, dynamic> json) => Device(
        deviceId: json["deviceId"],
        os: json["os"],
      );

  Map<String, dynamic> toJson() => {
        "deviceId": "deviceId",
        "os": "IOS",
      };
}

class User {
  String userName;
  String password;

  User({
    required this.userName,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        userName: json["userName"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "userName": userName,
        "password": password,
      };
}
