import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/auth_state.dart';

final authNotifier =
    ChangeNotifierProvider<AuthNotifier>((ref) => AuthNotifier());

class AuthNotifier extends ChangeNotifier {
  AuthState _authState = AuthState.loggingIn;

  AuthState get authState => _authState;

  Future<AuthState> signin() async {
    return Future.delayed(const Duration(seconds: 3), () {
      _authState = AuthState.loggedIn;
      notifyListeners();
      return _authState;
    });
  }

  Future<AuthState> signup() async {
    return Future.delayed(const Duration(seconds: 3), () {
      _authState = AuthState.loggedIn;
      notifyListeners();
      return _authState;
    });
  }

  Future<AuthState> signout() async {
    return Future.delayed(const Duration(seconds: 3), () {
      _authState = AuthState.loggedOut;
      notifyListeners();
      return _authState;
    });
  }
}
