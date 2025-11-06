import 'package:first_flutter_project/provider/user_model_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserPage extends ConsumerWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userModel = ref.watch(userModelProviderProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('${userModel.value?.username}'),
            Text('${userModel.value?.accessToken}'),
          ],
        ),
      ),
    );
  }
}
