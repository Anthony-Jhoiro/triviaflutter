import 'package:flutter/material.dart';

import '../../../common/models/user.dart';

class MeepleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9999167, size.height * 0.4301917);
    path_0.cubicTo(
      size.width * 1.005698,
      size.height * 0.2926167,
      size.width * 0.6763750,
      size.height * 0.2256417,
      size.width * 0.6621083,
      size.height * 0.2099583,
    );
    path_0.cubicTo(
      size.width * 0.6549990,
      size.height * 0.2021621,
      size.width * 0.6786092,
      size.height * -0.0001500000,
      size.width * 0.5000000,
      size.height * 4.736952e-17,
    );
    path_0.cubicTo(
      size.width * 0.3213917,
      size.height * -0.0001497417,
      size.width * 0.3449917,
      size.height * 0.2021583,
      size.width * 0.3378833,
      size.height * 0.2099583,
    );
    path_0.cubicTo(
      size.width * 0.3236125,
      size.height * 0.2256383,
      size.width * -0.005691667,
      size.height * 0.2926175,
      size.width * 0.00008333333,
      size.height * 0.4301917,
    );
    path_0.cubicTo(
      size.width * 0.005841833,
      size.height * 0.5677750,
      size.width * 0.1805917,
      size.height * 0.4971125,
      size.width * 0.2178667,
      size.height * 0.5376000,
    );
    path_0.cubicTo(
      size.width * 0.2504675,
      size.height * 0.5730392,
      size.width * 0.06507500,
      size.height * 0.7998917,
      size.width * 0.04434167,
      size.height * 0.9439417,
    );
    path_0.cubicTo(
      size.width * 0.03758058,
      size.height * 0.9908883,
      size.width * 0.05078050,
      size.height,
      size.width * 0.09640833,
      size.height,
    );
    path_0.cubicTo(
      size.width * 0.1791683,
      size.height,
      size.width * 0.2581750,
      size.height * 0.9999512,
      size.width * 0.3309417,
      size.height * 0.9999512,
    );
    path_0.cubicTo(
      size.width * 0.3638125,
      size.height * 0.9999512,
      size.width * 0.3755025,
      size.height * 0.9810612,
      size.width * 0.3924617,
      size.height * 0.9550328,
    );
    path_0.cubicTo(
      size.width * 0.4300008,
      size.height * 0.8974095,
      size.width * 0.4753392,
      size.height * 0.8047912,
      size.width * 0.5000117,
      size.height * 0.8047995,
    );
    path_0.cubicTo(
      size.width * 0.5246733,
      size.height * 0.8047897,
      size.width * 0.5700217,
      size.height * 0.8974078,
      size.width * 0.6075617,
      size.height * 0.9550245,
    );
    path_0.cubicTo(
      size.width * 0.6245217,
      size.height * 0.9810628,
      size.width * 0.6362008,
      size.height * 0.9999428,
      size.width * 0.6690717,
      size.height * 0.9999428,
    );
    path_0.cubicTo(
      size.width * 0.7418225,
      size.height * 0.9999428,
      size.width * 0.8208383,
      size.height * 0.9999917,
      size.width * 0.9036050,
      size.height * 0.9999917,
    );
    path_0.cubicTo(
      size.width * 0.9492367,
      size.height * 0.9999917,
      size.width * 0.9624458,
      size.height * 0.9908800,
      size.width * 0.9556750,
      size.height * 0.9439308,
    );
    path_0.cubicTo(
      size.width * 0.9349458,
      size.height * 0.7998808,
      size.width * 0.7495667,
      size.height * 0.5730308,
      size.width * 0.7821500,
      size.height * 0.5375892,
    );
    path_0.cubicTo(
      size.width * 0.8194192,
      size.height * 0.4971108,
      size.width * 0.9941917,
      size.height * 0.5677717,
      size.width * 0.9999333,
      size.height * 0.4301892,
    );
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(MeepleClipper oldClipper) => false;
}

class ProfilePicture extends StatelessWidget {
  final User user;
  final double size;

  const ProfilePicture({Key? key, required this.user, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = Uri.parse(user.avatar).isAbsolute
        ? user.avatar
        : 'https://avatars.dicebear.com/api/pixel-art/${user.id}.png';

    return ClipPath(
      clipper: MeepleClipper(),
      child: SizedBox(
        width: size,
        height: size,
        child: ColoredBox(
          color: Colors.black,
          child: Image.network(imageUrl),
        ),
      ),
    );
  }
}
