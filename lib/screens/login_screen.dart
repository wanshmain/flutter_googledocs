import 'package:docs_clone_flutter/colors.dart';
import 'package:docs_clone_flutter/repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  void signinwithGoogle(WidgetRef ref){
        ref.read(AuthRepositoryprovider).signinwithgoogle();

  }
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () => signinwithGoogle(ref),
          icon: Image.asset(
            'assets/images/g-logo-2.png',
            height: 20,
          ),
          label: const Text(
            'Sign in with Google',
            style: TextStyle(
              color: kblack,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: kwhitecolor,
            minimumSize: const Size(150, 50)
          ),
        ),
      ),
    );
  }
}
