import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hostel_complaints_admin/src/utils/extra_space.dart';

import 'components/complaint_card.dart';
import 'home_view_model.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(
      homeViewModelProvider.select((_) => _.status),
    );
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ExtraHeight(25),
              const ComplaintCard(),
              ExtraHeight(25),
              // ElevatedButton(
              //   onPressed: () {
              //     FirebaseAuth.instance.signOut();
              //   },
              //   child: const Text('sign out'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
