import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_index.g.dart';

@riverpod
class HomeIndex extends _$HomeIndex {
  @override
  int build() => 0;

  void setIndex(int index) => state = index;
}
