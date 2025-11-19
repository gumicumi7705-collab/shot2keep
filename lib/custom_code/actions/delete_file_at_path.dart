// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';

Future<String> deleteFileAtPath(String path) async {
  try {
    final file = File(path);
    final folderPath = file.parent.path; // <- csak a könyvtár neve

    if (await file.exists()) {
      await file.delete();
      print('deleteFileAtPath: deleted -> $path');
      return folderPath;
    } else {
      // Ha már nem létezett, tekintsük sikeresnek – és adjuk vissza a mappa útvonalát
      print('deleteFileAtPath: file not found -> $path');
      return folderPath;
    }
  } catch (e) {
    print('deleteFileAtPath error: $e');
    return ''; // hiba esetén üres string
  }
}
