import 'dart:convert';
import 'dart:html';

import 'package:docs_clone_flutter/constants.dart';
import 'package:docs_clone_flutter/models/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:http/http.dart';

final AuthRepositoryprovider = Provider(
  (ref) => AuthRepository(
    googleSignIn: GoogleSignIn(),
    client: Client(),
  ),
);

class AuthRepository {
  final GoogleSignIn _googleSignIn;
  final Client _client;
  AuthRepository({required GoogleSignIn googleSignIn, required Client client})
      : _googleSignIn = googleSignIn,
        _client =
            client; //we do this to make the scope less and other classes not to access this

  void signinwithgoogle() async {
    try {
      final user = await _googleSignIn.signIn();
      if (user != null) {
        final useracc = usermodel(
          profilepic: user.photoUrl!,
          name: user.displayName!,
          email: user.email,
          token: '',
          uid: '',
        );

        var res=await _client.post(
          Uri.parse('$host/api/signup'),
          body: useracc.toJson(),
          headers: {
            'Content-type':'application/json;charset=UTF-8',
          }
        );

        switch(res.statusCode){
          case 200:
          final newuser = useracc.copyWith(
            uid: jsonDecode(res.body)['user']['_id'] ,
            token: ,
          );
        }
      }
    } catch (e) {
      print(e);
    }
  }
}
