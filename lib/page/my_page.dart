import 'package:first_flutter_project/provider/user_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyPage extends ConsumerWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userModel = ref.watch(userModelProviderProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('${userModel.value?.username}'),
            Text('${userModel.value?.userId}'),
          ],
        ),
      ),
    );
  }
}
