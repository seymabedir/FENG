import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project/services/auth_notifier.dart';
import 'package:project/services/providers.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(authNotifierProvider, (_, state) {
      state.maybeWhen(
        error: (failure) {
          failure.maybeWhen(orElse: () {});
        },
        orElse: () {},
      );
    });
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
              child: Stack(
                children: [
                Center(
                      child: Container(
                        width: 800,
                          height: 900,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/splash.png'),
                              fit: BoxFit.fitWidth,
                            )
                          ),
                      ),
                    ),
                  Positioned(
                    bottom: 360,
                      left: 60,
                      child: Center(
                          child: const GoogleSignInButton()
                      )
                  ),
                  ],
              //),
            ),
          ),
        ),
      ),
    );
  }
}

class GoogleSignInButton extends ConsumerWidget {
  const GoogleSignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SignInButton(
      Buttons.Google,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      onPressed: () {
        ref.read(authNotifierProvider.notifier).signInWithGoogle();
      },
    );
  }
}
