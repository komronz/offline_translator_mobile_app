import 'package:flutter/foundation.dart';

class Translation{
  final String id;
  final List<String> categories;
  final String engTitle;
  final String uzbTitle;

  const Translation({
    required this.id,
    required this.categories,
    required this.engTitle,
    required this.uzbTitle,
  });

}