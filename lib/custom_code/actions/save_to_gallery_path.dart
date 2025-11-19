// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// CA name: SaveToGalleryPath
// Pubspec: vision_gallery_saver: ^3.1.1

import 'dart:typed_data';
import 'dart:io' show File, Platform;
import 'package:vision_gallery_saver/vision_gallery_saver.dart';

/// Arguments (FF-ben pontosan így add meg):
/// 1) filePath (String) – teljes elérési út, pl. "/storage/emulated/0/Download/kep.jpg"
/// 2) fileName (String) – pl. "2025.11.05_081212.jpg"
/// 3) androidRelativePath (String) – pl. "Pictures/EnAppom1"
///
/// Return: String – siker esetén a mentett fájl relatív útvonala ("Pictures/EnAppom1/xxx.jpg"),
/// hiba esetén üres string "".
Future<String> saveToGalleryPath(
  String filePath,
  String fileName,
  String androidRelativePath,
) async {
  try {
    // 1) Bemenet ellenőrzés
    if (filePath.isEmpty) return "";
    final file = File(filePath);
    if (!await file.exists()) return "";

    // 2) Bájtfájl beolvasása
    final Uint8List bytes = await file.readAsBytes();
    if (bytes.isEmpty) return "";

    // 3) Fájlnév kiterjesztés biztosítása (galéria felismerés miatt)
    if (!fileName.contains('.')) {
      fileName = '$fileName.jpg';
    }

    // 4) Androidhoz MediaStore-kompatibilis relatív út
    if (Platform.isAndroid && !androidRelativePath.startsWith('Pictures/')) {
      androidRelativePath = 'Pictures/$androidRelativePath';
    }
    if (androidRelativePath.endsWith('/')) {
      androidRelativePath =
          androidRelativePath.substring(0, androidRelativePath.length - 1);
    }

    final String fullPath = '$androidRelativePath/$fileName';

    // 5) Mentés galériába (vision_gallery_saver 3.1.1)
    // saveImage(Uint8List imageBytes, {int quality = 80, String? name, bool skipIfExists = false, String? androidRelativePath})
    final Map<String, dynamic> result = await VisionGallerySaver.saveImage(
      bytes,
      name: fileName,
      androidRelativePath: androidRelativePath,
      // quality: 100,
      // skipIfExists: false,
    );

    final bool ok = (result['isSuccess'] == true);
    return ok ? fullPath : "";
  } catch (_) {
    return "";
  }
}
