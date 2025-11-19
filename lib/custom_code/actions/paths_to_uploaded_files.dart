// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Ez az akció (pathsToUploadedFiles) egy fájlútvonal-listát (List<String>) kap bemenetként,
// és minden érvényes fájlból létrehoz egy FFUploadedFile objektumot.
// A művelet célja, hogy a korábban lementett képfájlokból újra létrehozható legyen
// egy megjelenítésre alkalmas UploadedFile-lista (pl. Carousel számára).
//
// A folyamat menete:
// - végigmegy a megadott fájlútvonalakon,
// - minden létező fájlt beolvas bytes formában,
// - elkészíti belőle az FFUploadedFile-t (a fájlnév a path utolsó eleme),
// - hozzáadja egy listához,
// - a végén visszaadja a teljes UploadedFile-listát.
//
// A konzolra (print) kiírja, hány fájlt sikerült feldolgozni.
// A visszatérési érték típusa: List<FFUploadedFile>
// A FlutterFlow-ban ezzel a listával közvetlenül etethető bármilyen Image/Carousel widget.
//
import '/flutter_flow/custom_functions.dart';
import 'dart:io';

Future<List<FFUploadedFile>> pathsToUploadedFiles(List<String> paths) async {
  final List<FFUploadedFile> uploadedList = [];

  for (final path in paths) {
    try {
      final file = File(path);
      if (await file.exists()) {
        final bytes = await file.readAsBytes();
        final name =
            path.split('/').isNotEmpty ? path.split('/').last : 'image.jpg';
        uploadedList.add(FFUploadedFile(bytes: bytes, name: name));
      } else {
        print('File not found: $path');
      }
    } catch (e) {
      print('Error reading $path: $e');
    }
  }

  print('pathsToUploadedFiles: ${uploadedList.length} file(s) converted.');
  return uploadedList;
}
