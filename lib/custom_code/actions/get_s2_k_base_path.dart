// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

import 'dart:io';
import 'package:path_provider/path_provider.dart';

/// Returns the exact internal base path up to S2K (no label, no filename),
/// e.g.
///
/// "/data/user/0/<package>/app_flutter/S2K/"
Future<String> getS2KBasePath() async {
  final Directory appDir = await getApplicationDocumentsDirectory();
  const String baseDir = 'S2K';

  // Build canonical base path with trailing slash
  final String basePath = '${appDir.path}/$baseDir/';

  // (Optional) ensure the directory exists
  final dir = Directory(basePath);
  if (!await dir.exists()) {
    await dir.create(recursive: true);
  }

  // Debug print – hasznos ellenőrzéshez
  print('S2K base path: $basePath');

  return basePath;
}
