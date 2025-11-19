// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:share_plus/share_plus.dart';

Future<bool> shareSingleFile(String path, String? text, String? subject) async {
  try {
    if (path.isEmpty) {
      print('shareSingleFile: empty path');
      return false;
    }
    final file = File(path);
    if (!await file.exists()) {
      print('shareSingleFile: not found -> $path');
      return false;
    }

    final xf = XFile(path);
    await Share.shareXFiles(
      [xf],
      text: (text ?? '').trim().isEmpty ? null : text!.trim(),
      subject: (subject ?? '').trim().isEmpty ? null : subject!.trim(),
    );

    print('shareSingleFile: shared -> $path');
    return true;
  } catch (e) {
    print('shareSingleFile error: $e');
    return false;
  }
}
// file-t oszt meg utvonalbol. szöveg + tárgy, vissza boolent ad, true / false
