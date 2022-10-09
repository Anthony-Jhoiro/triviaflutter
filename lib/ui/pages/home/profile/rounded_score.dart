import 'package:flutter/material.dart';

class RoundedScore extends StatelessWidget {
  final int score;

  const RoundedScore({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(200)),
        border: Border.fromBorderSide(
          BorderSide(color: Theme.of(context).primaryColorLight, width: 5),
        ),
      ),
      child: Center(
        child: Text(
          '$score',
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
    );
  }
}
