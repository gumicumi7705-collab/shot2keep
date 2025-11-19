// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Short Description:
// Ment egy képfájlt az app saját (nem publikus) tárhelyére, a megadott mappaszerkezetbe, és visszaadja az elérési útját.

// Description:
// Ez a művelet a megadott `baseDir` és `targetDir` alapján létrehozza (ha még nem létezik) a könyvtárstruktúrát az app belső, privát tárhelyén, majd a `fileName` néven elmenti a megadott `imageFile` tartalmát.
// A művelet nem igényel engedélyt és minden Android-verzión megbízhatóan működik, mivel az adatok az app saját területén maradnak.
// A függvény a mentett fájl teljes elérési útját (String) adja vissza, amit később a képek listájához, nézegetőhöz vagy export funkcióhoz felhasználhatsz.

import '/flutter_flow/custom_functions.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

Future<String> saveToAppStorage(
  String baseDir,
  String targetDir,
  String fileName,
  FFUploadedFile imageFile,
) async {
  try {
    // App saját mappája (nem publikus)
    final Directory appDir = await getApplicationDocumentsDirectory();

    // Teljes útvonal: /app_flutter/<baseDir>/<targetDir>
    final Directory saveDir = Directory('${appDir.path}/$baseDir/$targetDir');

    // Mappa létrehozása, ha nem létezik
    if (!await saveDir.exists()) {
      await saveDir.create(recursive: true);
    }

    // Mentési útvonal (fájlnévvel)
    final String savePath = '${saveDir.path}/$fileName';

    // A kapott kép bytes adatainak mentése
    final File newImage = File(savePath);
    await newImage.writeAsBytes(imageFile.bytes!);

    // Visszatérés a mentett fájl teljes útvonalával
    return savePath;
  } catch (e) {
    print('Save failed: $e');
    return 'ERROR: $e';
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
