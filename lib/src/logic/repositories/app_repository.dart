import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../constants/constants.dart';
import '../services/firebase_auth.dart';
import '../services/firestore.dart';

part 'app_repository.freezed.dart';

final appRepositoryProvider = StateNotifierProvider<AppRepository, AppState>(
  (ref) => AppRepository(
    firebaseAuth: ref.watch(firebaseAuthProvider),
    firestore: ref.watch(firestoreProvider),
    ref: ref,
  ),
);

class AppRepository extends StateNotifier<AppState> {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firestore;
  // ignore: unused_field
  late final StreamSubscription _subscription;
  final StateNotifierProviderRef ref;

  AppRepository({
    required this.firebaseAuth,
    required this.firestore,
    required this.ref,
  }) : super(const AppState()) {
    () async {
      await Future.delayed(spalshScreenDuration);
      _subscription = firebaseAuth.authStateChanges().listen(
        (user) async {
          if (user == null) {
            state = state.copyWith(
              appStatus: AppStatus.unauthenticated,
            );
          } else {
            // save user auth data in state and set status to authenticated
            state = state.copyWith(
              authUser: user,
              appStatus: AppStatus.authenticated,
            );
          }
        },
      );
    }();
  }

  setAppStatus(AppStatus status) => state = state.copyWith(
        appStatus: status,
      );
}

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(null) User? authUser,
    @Default(AppStatus.initial) AppStatus? appStatus,
  }) = _AppState;
}

enum AppStatus {
  initial,
  unauthenticated,
  authenticated,
  authenticatedButNoInternetConnection,
}
