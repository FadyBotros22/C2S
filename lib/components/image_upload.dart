import 'package:amplify_flutter/amplify_flutter.dart';
import 'dart:io';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';
import 'package:logger/logger.dart';
import 'amplifyconfiguration.dart';

var logger = Logger();

Future<String> uploadFile(File file) async {
  try {
    var key = DateTime.now().millisecondsSinceEpoch;
    final result = await Amplify.Storage.uploadFile(
      localFile: AWSFile.fromPath(file.path),
      path: StoragePath.fromString('public/$key.jpg'),
    ).result;

    return "https://$bucket.s3.us-east-2.amazonaws.com/public/$key.jpg";
  } catch (e) {
    logger.e('An unexpected error occurred: $e');
    return '';
  }
}

Future<File> compressImage(File file) async {
  final tempDir = await getTemporaryDirectory();
  var result = await FlutterImageCompress.compressAndGetFile(
    file.absolute.path,
    "${tempDir.path}/temp.jpg",
    quality: 40,
  );

  return File(result!.path);
}
