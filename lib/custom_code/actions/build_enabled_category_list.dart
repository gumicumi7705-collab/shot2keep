// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Short Description:
// Builds a list of enabled category labels (12 flags + 12 labels),
// removes duplicates, sorts A–Z (numbers first), and returns the list.

Future<List<String>> buildEnabledCategoryList(
  // enabled flags
  bool personalEnabled,
  bool homeEnabled,
  bool workEnabled,
  bool vehicleEnabled,
  bool purchasesEnabled,
  bool temporaryEnabled,
  bool custom1Enabled,
  bool custom2Enabled,
  bool custom3Enabled,
  bool custom4Enabled,
  bool custom5Enabled,
  bool custom6Enabled,

  // labels
  String personalLabel,
  String homeLabel,
  String workLabel,
  String vehicleLabel,
  String purchasesLabel,
  String temporaryLabel,
  String custom1Label,
  String custom2Label,
  String custom3Label,
  String custom4Label,
  String custom5Label,
  String custom6Label,
) async {
  final List<String> collected = [];

  void addIf(bool enabled, String label) {
    final t = label.trim();
    if (enabled && t.isNotEmpty) collected.add(t);
  }

  // collect enabled labels
  addIf(personalEnabled, personalLabel);
  addIf(homeEnabled, homeLabel);
  addIf(workEnabled, workLabel);
  addIf(vehicleEnabled, vehicleLabel);
  addIf(purchasesEnabled, purchasesLabel);
  addIf(temporaryEnabled, temporaryLabel);
  addIf(custom1Enabled, custom1Label);
  addIf(custom2Enabled, custom2Label);
  addIf(custom3Enabled, custom3Label);
  addIf(custom4Enabled, custom4Label);
  addIf(custom5Enabled, custom5Label);
  addIf(custom6Enabled, custom6Label);

  // de-duplicate (case-insensitive, keep first spelling)
  final Map<String, String> unique = {};
  for (final v in collected) {
    unique.putIfAbsent(v.toLowerCase(), () => v);
  }

  final List<String> result = unique.values.toList();

  // sort: numbers first, then A–Z (case-insensitive)
  bool startsWithDigit(String s) => RegExp(r'^\d').hasMatch(s);
  result.sort((a, b) {
    final ad = startsWithDigit(a);
    final bd = startsWithDigit(b);
    if (ad != bd) return ad ? -1 : 1;
    return a.toLowerCase().compareTo(b.toLowerCase());
  });

  return result;
}
