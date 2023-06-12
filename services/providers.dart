import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project/services/auth_notifier.dart';
import 'package:project/services/auth_repository.dart';

final firebaseAuthProvider =
    Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);
final googleSignInProvider = Provider<GoogleSignIn>((ref) => GoogleSignIn());

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(
    ref.watch(firebaseAuthProvider),
    ref.watch(googleSignInProvider),
  );
});

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.watch(authRepositoryProvider),
  ),
);
