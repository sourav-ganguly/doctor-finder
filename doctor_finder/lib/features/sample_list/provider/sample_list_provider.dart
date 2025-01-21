import 'package:flutter_riverpod/flutter_riverpod.dart';

final sampleListProvider = Provider<List<String>>((ref) {
  return [
    'Sample Item 1',
    'Sample Item 2',
    'Sample Item 3',
    'Sample Item 4',
    'Sample Item 5',
  ];
});
