// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// CA name: moveZipToDownloads
// Feladat: egy meglévő ZIP fájlt átmásol a nyilvános Download mappába.
// Bemenet:
//   zipPath (String)  – a zipWithFlutterArchive visszaadott path-ja
//   subDir (String)   – pl. "Shot2Keep" (Download/Shot2Keep alá), vagy "" ha nem kell alkönyvtár
// Kimenet:
//   String – a célfájl teljes elérési útja, hiba esetén "ERROR: ..."

import 'dart:io' show File, Directory, Platform;

Future<String> moveZipToDownloads(
  String zipPath,
  String subDir,
) async {
  try {
    // Csak Androidra tervezve
    if (!Platform.isAndroid) {
      return 'ERROR: only Android supported';
    }

    if (zipPath.isEmpty) {
      return 'ERROR: empty zipPath';
    }

    final srcFile = File(zipPath);
    if (!await srcFile.exists()) {
      return 'ERROR: source zip does not exist';
    }

    // Alap Download mappa (tipikus Android elérési út)
    const String baseDownloads = '/storage/emulated/0/Download';

    // Alkönyvtár kezelése
    String trimmedSub = subDir.trim();
    final String targetDirPath =
        trimmedSub.isEmpty ? baseDownloads : '$baseDownloads/$trimmedSub';

    final targetDir = Directory(targetDirPath);
    if (!await targetDir.exists()) {
      await targetDir.create(recursive: true);
    }

    // Fájlnév a forrás path-ból
    final String fileName =
        zipPath.split('/').isNotEmpty ? zipPath.split('/').last : 'export.zip';

    final String dstPath = '${targetDir.path}/$fileName';
    final dstFile = await srcFile.copy(dstPath);

    print('moveZipToDownloads: copied -> ${dstFile.path}');
    return dstFile.path;
  } catch (e) {
    print('moveZipToDownloads error: $e');
    return 'ERROR: $e';
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
