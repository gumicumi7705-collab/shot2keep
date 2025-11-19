// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> normalizeFileName(String text) async {
  if (text.isEmpty) return '';

  String s = text.toLowerCase();

  // 1) Eleji/végi szóköz levágása
  s = s.trim();

  // 2) Többszörös whitespace → egyetlen szóköz
  s = s.replaceAll(RegExp(r'\s+'), ' ');

  // 3) Tiltott karakterek és vezérlők törlése
  s = s.replaceAll(RegExp(r'[\\/:*?"<>|]'), '');
  s = s.replaceAll(RegExp(r'[\x00-\x1F]'), '');

  // 4) Space–pont–space minta törlése (mobil billentyűzet bug)
  s = s.replaceAll(RegExp(r'\s\.\s'), ' ');
  s = s.replaceAll(RegExp(r'^\.\s'), ' ');
  s = s.replaceAll(RegExp(r'\s\.$'), ' ');

  // 5) Többszörös elválasztók összevonása
  s = s.replaceAll(RegExp(r'\.{2,}'), '.');
  s = s.replaceAll(RegExp(r'_{2,}'), '_');
  s = s.replaceAll(RegExp(r'-{2,}'), '-');

  // 6) Eleji/végi pontok, szóközök eltávolítása
  s = s.replaceAll(RegExp(r'^[\s.]+'), '');
  s = s.replaceAll(RegExp(r'[\s.]+$'), '');

  // 7) Foglalt Windows-nevek kezelése
  const reserved = {
    'con',
    'prn',
    'aux',
    'nul',
    'com1',
    'com2',
    'com3',
    'com4',
    'com5',
    'com6',
    'com7',
    'com8',
    'com9',
    'lpt1',
    'lpt2',
    'lpt3',
    'lpt4',
    'lpt5',
    'lpt6',
    'lpt7',
    'lpt8',
    'lpt9'
  };
  if (reserved.contains(s.toLowerCase())) {
    s = '${s}_';
  }

  // 8) Ha üres lett, akkor üres stringet adunk vissza
  if (s.isEmpty) return '';

  // 9) Hosszkorlát
  if (s.length > 128) s = s.substring(0, 128).trimRight();

  // 10) Első betű nagybetűs
  if (s.isNotEmpty) {
    s = s[0].toUpperCase() + s.substring(1);
  }

  return s;
}
