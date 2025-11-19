// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Short Description:
// Saves multiple uploaded images into multiple label folders inside the app's private storage.
// Generates filenames like S2K-<timestamp>-<counter>.jpg and returns a short English summary.

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import '/flutter_flow/uploaded_file.dart'; // <-- NÉLKÜLE gond lehet az FFUploadedFile típussal

Future<List<String>> saveImagesToLabelsLoop(
  String baseDir,
  List<String> labels,
  List<FFUploadedFile> images,
  int startCounter,
  String ext,
) async {
  final List<String> savedPaths = [];
  int counter = startCounter;

  // Basic guards
  if (baseDir.trim().isEmpty) return ['No baseDir provided.'];
  if (images.isEmpty) return ['No images provided.'];
  // Szűrjük a label-eket: ne legyenek üresek/whitespace
  final List<String> cleanLabels =
      labels.where((l) => l.trim().isNotEmpty).toList();
  if (cleanLabels.isEmpty) return ['No valid labels provided.'];

  // ext normalizálás: ".jpg" -> "jpg"
  ext = ext.trim();
  if (ext.startsWith('.')) ext = ext.substring(1);
  if (ext.isEmpty) ext = 'jpg';

  // App private root
  final Directory appDir = await getApplicationDocumentsDirectory();

  // Timestamp helper: yyyyMMdd_HHmmss_SSS
  String _ts() {
    final now = DateTime.now();
    String two(int n) => n.toString().padLeft(2, '0');
    String three(int n) => n.toString().padLeft(3, '0');
    return '${now.year}'
        '${two(now.month)}'
        '${two(now.day)}_'
        '${two(now.hour)}'
        '${two(now.minute)}'
        '${two(now.second)}_'
        '${three(now.millisecond)}';
  }

  // Outer: images
  for (final ff in images) {
    try {
      // Szigorú ellenőrzés – a bytes kötelező ehhez az akcióhoz
      final bytes = ff.bytes;
      if (bytes == null || bytes.isEmpty) {
        // Ha itt sorra üresnek látod a bytes-t, akkor a forrás widget nem ad át bytes-t,
        // azt jelezd, és a képet átugorjuk.
        print('Skip image: empty bytes or null.');
        continue;
      }

      final String stamp = _ts(); // egyszer generáljuk képenként

      // Inner: labels
      for (final rawLabel in cleanLabels) {
        try {
          final label = rawLabel.trim();

          // /app_flutter/<baseDir>/<label>
          final Directory saveDir = Directory('${appDir.path}/$baseDir/$label');
          if (!await saveDir.exists()) {
            await saveDir.create(recursive: true);
          }

          final String fileName = 'S2K-$stamp-$counter.$ext';
          final String savePath = '${saveDir.path}/$fileName';

          final File f = File(savePath);
          await f.writeAsBytes(bytes, flush: true); // flush: biztos írás

          savedPaths.add(savePath);
          counter += 1;
        } catch (e) {
          print('Save failed (label loop): $e');
          // folytatás a következő labellel
        }
      }
    } catch (e) {
      print('Save failed (image loop): $e');
      // folytatás a következő képpel
    }
  }

  // Summary
  final int total = images.length * cleanLabels.length;
  final int saved = savedPaths.length;
  final int failed = total - saved;

  String summary =
      'Saved $saved files in ${cleanLabels.length} folders, $failed errors.';
  if (failed > 0) {
    summary += ' Please check your images.';
  }

  print(summary);
  // Snackbar-hoz .first-tel olvasd ki
  return [summary];
}
