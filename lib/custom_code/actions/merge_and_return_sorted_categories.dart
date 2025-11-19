// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<String>> mergeAndReturnSortedCategories(
  List<String> existingList,
  List<String> completeList,
) async {
  // 1) Clean: trim + remove empty entries
  String norm(String s) => s.trim();
  final List<String> base =
      existingList.where((e) => e.trim().isNotEmpty).map(norm).toList();
  final List<String> incoming =
      completeList.where((e) => e.trim().isNotEmpty).map(norm).toList();

  // 2) Combine unique values (case-insensitive)
  final Map<String, String> unique = {};
  for (final v in base) {
    unique[v.toLowerCase()] = v;
  }
  for (final v in incoming) {
    final key = v.toLowerCase();
    if (!unique.containsKey(key)) {
      unique[key] = v;
    }
  }

  // 3) Sort (numbers first, then A–Z)
  bool startsWithDigit(String s) => RegExp(r'^\d').hasMatch(s);
  final List<String> merged = unique.values.toList();
  merged.sort((a, b) {
    final ad = startsWithDigit(a);
    final bd = startsWithDigit(b);
    if (ad != bd) return ad ? -1 : 1;
    return a.toLowerCase().compareTo(b.toLowerCase());
  });

  // 4) Capitalize first letter of each label
  List<String> capitalized = merged.map((e) {
    if (e.isEmpty) return e;
    return e[0].toUpperCase() + e.substring(1);
  }).toList();

  print('Sorted ${capitalized.length} total categories.');
  return capitalized;
}
