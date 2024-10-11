import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hostel_complaints_admin/src/logic/services/firestore.dart';
import 'package:hostel_complaints_admin/src/models/firestore_models/complaint_data.dart';

import '../../logic/services/firebase_auth.dart';

part 'home_view_model.freezed.dart';

final homeViewModelProvider =
    StateNotifierProvider.autoDispose<HomeViewModel, HomeViewState>(
  (ref) => HomeViewModel(
    firebaseAuth: ref.watch(firebaseAuthProvider),
    firebaseFirestore: ref.watch(firestoreProvider),
    // ref: ref,
  ),
);

class HomeViewModel extends StateNotifier<HomeViewState> {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;
  // final AutoDisposeStateNotifierProviderRef ref;
  HomeViewModel({
    required this.firebaseAuth,
    required this.firebaseFirestore,
    // required this.ref,
  }) : super(const HomeViewState()) {
    _fetchAllComplaints();
  }

  /// fetches the complaints from all rooms and sets in [allComplaints]
  _fetchAllComplaints() async {
    print('heloo..................');
    firebaseFirestore.collection('electricity_complaints').get().then(
          (snapshot) => snapshot.docs.map(
            (complaint) {
              // print(complaint.id);
              print('hello');
            },
          ),
        );
  }
}

@freezed
class HomeViewState with _$HomeViewState {
  const factory HomeViewState({
    @Default(HomeViewStatus.loading) HomeViewStatus status,
    @Default([]) List<ComplaintData> allComplaints,
    String? error,
  }) = _HomeViewState;
}

enum HomeViewStatus {
  loading,
  loaded,
  error,
}
