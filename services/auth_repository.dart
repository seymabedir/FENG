import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project/services/auth_failure.dart';

class AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  AuthRepository(this._firebaseAuth, this._googleSignIn);

  Stream<User?> authStateChanges() => _firebaseAuth.authStateChanges();
  User? get _currentUser => _firebaseAuth.currentUser;

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      final credentials = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      await credentials.user?.sendEmailVerification();
      return right(unit);
    } on FirebaseAuthException catch (error) {
      final errorCode = error.code;
      if (errorCode == 'email-already-in-use') {
        return left(const AuthFailure.emailInUse());
      } else if (errorCode == 'network-request-failed') {
        return left(const AuthFailure.noNetworkConnection());
      } else if (errorCode == 'too-many-requests') {
        return left(const AuthFailure.tooManyRequests());
      } else {
        return left(const AuthFailure.unexpectedError());
      }
    } on PlatformException {
      return left(const AuthFailure.unexpectedError());
    }
  }

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return right(unit); //succesfull}
    } on FirebaseAuthException catch (error) {
      final errorCode = error.code;
      if (errorCode == 'network-request-failed') {
        return left(const AuthFailure.noNetworkConnection());
      } else if (errorCode == 'too-many-requests') {
        return left(const AuthFailure.tooManyRequests());
      } else if (errorCode == 'user-disabled') {
        return left(const AuthFailure.userDisabled());
      } else if (errorCode == 'user-not-found' ||
          errorCode == 'wrong-password') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.unexpectedError());
      }
    } on PlatformException {
      return left(const AuthFailure.unexpectedError());
    }
  }

  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final signInAccount = await _googleSignIn.signIn();

      if (signInAccount != null) {
        final authentication = await signInAccount.authentication;
        final credential = GoogleAuthProvider.credential(
            accessToken: authentication.accessToken,
            idToken: authentication.idToken);
        await _firebaseAuth.signInWithCredential(credential);
        return right(unit);
      } else {
        return left(const AuthFailure.cancelledByUser());
      }
    } on FirebaseAuthException catch (error) {
      final errorCode = error.code;
      if (errorCode == 'user-disabled') {
        return left(const AuthFailure.userDisabled());
      } else if (errorCode == 'network-request-failed') {
        return left(const AuthFailure.noNetworkConnection());
      } else {
        return left(const AuthFailure.unexpectedError());
      }
    } on PlatformException {
      return left(const AuthFailure.unexpectedError());
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
    await _googleSignIn.signOut();
  }

  Future<Either<AuthFailure, bool>> isUserEmailVerified() async {
    try {
      await _currentUser!.reload();
      return right(_currentUser!.emailVerified);
    } on FirebaseAuthException catch (error) {
      final errorCode = error.code;
      if (errorCode == 'network-request-failed') {
        return left(const AuthFailure.noNetworkConnection());
      } else {
        return left(const AuthFailure.unexpectedError());
      }
    } on PlatformException {
      return left(const AuthFailure.unexpectedError());
    }
  }

  Future<Either<AuthFailure, Unit>> resendEmailVerificationMail() async {
    try {
      await _currentUser!.sendEmailVerification();
      return right(unit);
    } on FirebaseAuthException catch (error) {
      final errorCode = error.code;
      if (errorCode == 'network-request-failed') {
        return left(const AuthFailure.noNetworkConnection());
      } else if (errorCode == 'too-many-requests') {
        return left(const AuthFailure.tooManyRequests());
      } else {
        return left(const AuthFailure.unexpectedError());
      }
    } on PlatformException {
      return left(const AuthFailure.unexpectedError());
    }
  }

  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return right(unit);
    } on FirebaseAuthException catch (error) {
      final errorCode = error.code;
      if (errorCode == 'network-request-failed') {
        return left(const AuthFailure.noNetworkConnection());
      } else if (errorCode == 'too-many-requests') {
        return left(const AuthFailure.tooManyRequests());
      } else if (errorCode == 'user-not-found') {
        return left(const AuthFailure.emailDoesNotExist());
      } else {
        return left(const AuthFailure.unexpectedError());
      }
    } on PlatformException {
      return left(const AuthFailure.unexpectedError());
    }
  }
}
