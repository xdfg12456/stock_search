import 'package:flutter_riverpod/flutter_riverpod.dart';

final numOfDataProvider = Provider<Map<String, String>>((ref) {
  return {
    "quote": "120",
    "threeLegalPerson": "5",
  };
});
