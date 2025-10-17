import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_index.g.dart';

@riverpod
class HomeIndex extends _$HomeIndex {
  @override
  int build() => 0;

  void increment(int index) => state = index;

  int getIndex(){
    return state;
  }
}
