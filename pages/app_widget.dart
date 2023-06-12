import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project/pages/home_page.dart';
import 'package:project/pages/sign_in_page.dart';
import 'package:project/services/auth_notifier.dart';
import 'package:project/services/providers.dart';

class AppWidget extends ConsumerWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(authNotifierProvider, (_, state) {
      state.maybeMap(
        authenticated: (_) async {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const HomePage()));
        },
        unauthenticated: (_) async {},
        orElse: () {},
      );
    });
    return const SignInPage();
    /* return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/yemek.jpg'),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    ); */
  }
}
