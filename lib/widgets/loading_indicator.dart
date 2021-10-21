import 'package:flutter/material.dart';

class LoadingIndicator {
  BuildContext _context;

  LoadingIndicator._create(this._context);

  factory LoadingIndicator.of(BuildContext context) =>
      LoadingIndicator._create(context);

  void hide() => Navigator.of(_context).pop();

  void show() => showDialog(
      context: _context,
      barrierDismissible: false,
      builder: (context) => _FullScreenLoader());

  Future<T> during<T>(Future<T> future) {
    show();
    return future.whenComplete(() => hide());
  }
}

class _FullScreenLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
      decoration: const BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.5)),
      child: const Center(child: CircularProgressIndicator()));
}
