import 'package:amplify_flutter/amplify_flutter.dart';
import 'dart:io';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';
import 'amplifyconfiguration.dart';

import 'package:logger/logger.dart';

var logger = Logger();

Future<String> uploadFile(File file) async {
  var key = DateTime.now().millisecondsSinceEpoch;
  try {
    final result = await Amplify.Storage.uploadFile(
      localFile: AWSFile.fromPath(file.path),
      path: StoragePath.fromString('public/$key.jpg'),
      // Correct usage of StoragePath
      onProgress: (progress) {
        safePrint('Completion: ${progress.fractionCompleted}');
      },
    ).result;

    return "https://$bucket.s3.us-east-2.amazonaws.com/public/$key.jpg";
  } on StorageException catch (e) {
    logger.e('Error uploading file: ${e.message}');
    logger.e('Full exception: ${e.toString()}');
    logger.e('Underlying exception: ${e.underlyingException}');
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
