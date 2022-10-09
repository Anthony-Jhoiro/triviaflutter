import 'package:flutter/material.dart';

//4EC1FF,5EC5FC,6FC8F8,7FCCF5,8FCFF2,A0D3EE,B0D6EB,C0DAE8,D1DDE4,E1E1E1
//FF9441,EE893C,DE7F37,CD7431,BC6A2C,AC5F27,9B5522,8A4A1C,7A4017,693512

// var rankColors = List.of({
//   Color(0xFF4EC1FF),
//   Color(0xFF5EC5FC),
//   Color(0xFF6FC8F8),
//   Color(0xFF7FCCF5),
//   Color(0xFF8FCFF2),
//   Color(0xFFA0D3EE),
//   Color(0xFFB0D6EB),
//   Color(0xFFC0DAE8),
//   Color(0xFFD1DDE4),
//   Color(0xFFE1E1E1),
// });

var rankColors = List.of({
  Color(0xFFFF9441),
  Color(0xFFEE893C),
  Color(0xFFDE7F37),
  Color(0xFFCD7431),
  Color(0xFFBC6A2C),
  Color(0xFFAC5F27),
  Color(0xFF9B5522),
  Color(0xFF8A4A1C),
  Color(0xFF7A4017),
  Color(0xFF693512),
});

class RankRank extends StatelessWidget {
  final int rank;

  const RankRank({Key? key, required this.rank}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rankColor = (rank >= 10) ? rankColors[9] : rankColors[rank];

    return Container(
      width: 50,
      child: Row(
        children: [
          if (rank < 3)
            Icon(
              Icons.diamond,
              color: rankColor,
            ),
          Text(
            (rank + 1).toString(),
            style: TextStyle(
              color: rankColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
