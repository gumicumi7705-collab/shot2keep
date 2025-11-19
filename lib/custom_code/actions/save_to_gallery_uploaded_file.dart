// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// CA name: SaveToGalleryUploadedFile
// Pubspec: vision_gallery_saver: ^3.1.1

import 'dart:typed_data';
import 'dart:io' show Platform;

// FFUploadedFile
import 'package:vision_gallery_saver/vision_gallery_saver.dart';

/// Arguments (FF-ben pontosan így add meg):
/// 1) file (FFUploadedFile)
/// 2) fileName (String) – pl. "2025.11.05_081212.jpg"
/// 3) androidRelativePath (String) – pl. "Pictures/ÉnAppom1"
///
/// Return: String – siker esetén a mentett fájl relatív útvonala ("Pictures/ÉnAppom1/xxx.jpg"),
/// hiba esetén üres string "".
Future<String> saveToGalleryUploadedFile(
  FFUploadedFile file,
  String fileName,
  String androidRelativePath,
) async {
  try {
    final Uint8List? bytes = file.bytes;
    if (bytes == null || bytes.isEmpty) return "";

    // Ha hiányzik a kiterjesztés, tegyünk .jpg-t (a galéria felismerése miatt)
    if (!fileName.contains('.')) {
      fileName = '$fileName.jpg';
    }

    // Androidon a MediaStore albumokhoz "Pictures/..." kell.
    if (Platform.isAndroid && !androidRelativePath.startsWith('Pictures/')) {
      androidRelativePath = 'Pictures/$androidRelativePath';
    }
    // Konzisztencia: ne legyen záró perjel
    if (androidRelativePath.endsWith('/')) {
      androidRelativePath =
          androidRelativePath.substring(0, androidRelativePath.length - 1);
    }

    final String fullPath = '$androidRelativePath/$fileName';

    // vision_gallery_saver 3.1.1 signature:
    // saveImage(Uint8List imageBytes, {int quality = 80, String? name, bool skipIfExists = false, String? androidRelativePath})
    final Map<String, dynamic> result = await VisionGallerySaver.saveImage(
      bytes,
      name: fileName,
      androidRelativePath: androidRelativePath,
      // quality: 100,            // ha akarsz jobb JPEG tömörítést
      // skipIfExists: false,     // ha duplikációt el akarod kerülni, állítsd true-ra
    );

    final bool ok = (result['isSuccess'] == true);
    return ok ? fullPath : "";
  } catch (_) {
    return "";
  }
}
