import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String? echoString() {
  String echoString(String input) {
    return input;
  }
}

/// kiszedi a listából az üres és szközös elemeket
List<String> removeEmptyStrings(List<String> inputList) {
  if (inputList.isEmpty) return [];
  return inputList.where((item) => item.trim().isNotEmpty).toList();
}
