import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hostel_complaints_admin/src/models/firestore_models/admin_data.dart';
import 'package:hostel_complaints_admin/src/utils/extra_space.dart';

import 'components/complaint_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ExtraHeight(25),
              const ComplaintCard(),
              ExtraHeight(25),
              ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                child: const Text('sign out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
