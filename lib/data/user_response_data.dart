import 'dart:convert';

UserResponseData userResponseDataFromJson(String str) =>
    UserResponseData.fromJson(json.decode(str));

String userResponseDataToJson(UserResponseData data) =>
    json.encode(data.toJson());

class UserResponseData {
  Meta meta;
  Data data;

  UserResponseData({
    required this.meta,
    required this.data,
  });

  factory UserResponseData.fromJson(Map<String, dynamic> json) =>
      UserResponseData(
        meta: Meta.fromJson(json["meta"]),
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "data": data.toJson(),
      };
}

class Data {
  User user;
  Device device;
  String authToken;

  Data({
    required this.user,
    required this.device,
    required this.authToken,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        user: User.fromJson(json["user"]),
        device: Device.fromJson(json["device"]),
        authToken: json["authToken"],
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "device": device.toJson(),
        "authToken": authToken,
      };
}

class Device {
  String id;
  String deviceId;

  Device({
    required this.id,
    required this.deviceId,
  });

  factory Device.fromJson(Map<String, dynamic> json) => Device(
        id: json["id"],
        deviceId: json["deviceId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "deviceId": deviceId,
      };
}

class User {
  String id;
  String userName;
  String name;

  User({
    required this.id,
    required this.userName,
    required this.name,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        userName: json["userName"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userName": userName,
        "name": name,
      };
}

class Meta {
  int status;
  String message;

  Meta({
    required this.status,
    required this.message,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}
