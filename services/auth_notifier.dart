import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project/services/auth_failure.dart';
import 'package:project/services/auth_repository.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.error(AuthFailure failure) = _Error;
}

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository _authRepository;
  late StreamSubscription<User?> _authStatechangesSubscription;
  AuthNotifier(this._authRepository) : super(const AuthState.initial()) {
    _authStatechangesSubscription =
        _authRepository.authStateChanges().listen((user) {
      if (user != null) {
        state = const AuthState.authenticated();
      } else {
        state = const AuthState.unauthenticated();
      }
    });
  }

  Future<void> registerWithEmailAndPassword(
      String email, String password) async {
    final failureOrSuccess =
        await _authRepository.registerWithEmailAndPassword(email, password);
    failureOrSuccess.fold(
      (failure) => state = AuthState.error(failure),
      (r) {},
    );
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    final failureOrSuccess =
        await _authRepository.signInWithEmailAndPassword(email, password);
    failureOrSuccess.fold(
      (failure) => state = AuthState.error(failure),
      (r) {}, //=> state = const AuthState.authenticated()
    );
  }

  Future<void> signInWithGoogle() async {
    final failureOrSuccess = await _authRepository.signInWithGoogle();
    failureOrSuccess.fold(
      (failure) => state = AuthState.error(failure),
      (r) {},
    );
  }

  Future<void> signOut() async{
    await _authRepository.signOut();
    // Stream will update the authentication status
    //state = const AuthState.unauthenticated();
  }

  @override
  void dispose() {
    _authStatechangesSubscription.cancel();
    super.dispose();
  }
}