// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Short Description:
// Lists all files in a given directory and returns their full paths as a list of strings.

import 'dart:io';

Future<List<String>> readDirList(String dirPath) async {
  final List<String> filePaths = [];
  try {
    final dir = Directory(dirPath);
    if (await dir.exists()) {
      final List<FileSystemEntity> entities = dir.listSync();

      for (final entity in entities) {
        if (entity is File) {
          filePaths.add(entity.path);
        }
      }
    } else {
      print('Directory not found: $dirPath');
    }
  } catch (e) {
    print('Error reading directory: $e');
  }

  print('Found ${filePaths.length} files in $dirPath');
  return filePaths;
}
