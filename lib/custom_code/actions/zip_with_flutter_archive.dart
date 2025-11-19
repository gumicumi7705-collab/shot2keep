// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Path-listából ZIP-et készít flutter_archive-dzsal.
// Bemenet: paths (List<String>), zipName (String, pl. "export_2025_11_06.zip")
// Kimenet: String (a létrejött ZIP teljes elérési útja), hiba esetén "ERROR: ..."

import '/flutter_flow/custom_functions.dart';

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_archive/flutter_archive.dart';

Future<String> zipWithFlutterArchive(
  List<String> paths,
  String zipName,
) async {
  Directory? tempDir;
  try {
    if (paths.isEmpty) {
      return 'ERROR: empty paths';
    }

    // App dokumentum mappa (privát tárhely)
    final appDir = await getApplicationDocumentsDirectory();

    // Export mappa (ahova a ZIP kerül)
    final exportDir = Directory('${appDir.path}/exports');
    if (!await exportDir.exists()) {
      await exportDir.create(recursive: true);
    }

    // Ideiglenes gyűjtő mappa: a kiválasztott fájlokat ide másoljuk be
    tempDir =
        await Directory('${appDir.path}/_zip_tmp').create(recursive: true);

    // Másolás: csak a fájlnév (basename) maradjon
    final copiedFiles = <File>[];
    for (final p in paths) {
      try {
        final src = File(p);
        if (await src.exists()) {
          final name = p.split('/').isNotEmpty ? p.split('/').last : 'file';
          final dst = File('${tempDir.path}/$name');
          await dst.writeAsBytes(await src.readAsBytes());
          copiedFiles.add(dst);
        } else {
          print('zipWithFlutterArchive: missing -> $p');
        }
      } catch (e) {
        print('zipWithFlutterArchive copy error: $e');
      }
    }

    if (copiedFiles.isEmpty) {
      return 'ERROR: nothing to zip';
    }

    // ZIP cél
    final zipFile = File('${exportDir.path}/$zipName');

    // Ha létezik, felülírjuk
    if (await zipFile.exists()) {
      await zipFile.delete();
    }

    // ZIP készítés a teljes ideiglenes könyvtárból
    await ZipFile.createFromDirectory(
      sourceDir: tempDir,
      zipFile: zipFile,
      recurseSubDirs: true,
      includeBaseDirectory: false,
    );

    print('zipWithFlutterArchive: created -> ${zipFile.path}');
    return zipFile.path;
  } catch (e) {
    print('zipWithFlutterArchive error: $e');
    return 'ERROR: $e';
  } finally {
    // Takarítás
    try {
      if (tempDir != null && await tempDir.exists()) {
        await tempDir.delete(recursive: true);
      }
    } catch (_) {}
  }
}
