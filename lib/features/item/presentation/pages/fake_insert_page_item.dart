import 'package:flutter/material.dart';

class FakeInsertPageItem extends StatelessWidget {
  const FakeInsertPageItem({super.key});

  @override
  Widget build(BuildContext context) {
    Future.microtask(() =>  Navigator.pushNamed(context, "/insert"));
    return Container();
  }

}