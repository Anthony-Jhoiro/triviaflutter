import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:triviaflutter/common/repository/current_user_repository.dart';
import 'package:triviaflutter/common/repository/user_repository.dart';
import 'package:triviaflutter/ui/pages/home/profile/rounded_score.dart';
import 'package:triviaflutter/ui/pages/home/profile/widgets/image_picker_mode_selector.dart';

import '../../../../common/models/user.dart';
import '../../../common/button.dart';
import '../../../common/user/profile_picture.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final CurrentUserRepository currentUserRepository =
      CurrentUserRepository.getInstance();
  User user = UserRepository.getInstance().currentUser;

  @override
  void initState() {
    super.initState();

    currentUserRepository.userStream.listen((user) {
      setState(() {
        this.user = user;
      });
    });
  }

  void logout(BuildContext context) async {
    await currentUserRepository.logout();
    context.goNamed("signup");
  }

  void pickImage(ImageSource imageSource) async {
    final _imagePicker = ImagePicker();

    final pickedFile = await _imagePicker.pickImage(
      source: imageSource,
    );

    if (pickedFile == null) return;

    await currentUserRepository.setAvatarImage(File(pickedFile.path));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            width: 250,
            height: 250,
            child: Stack(
              children: [
                Positioned(
                  top: 25,
                  left: 25,
                  child: ProfilePicture(
                    user: user,
                    size: 200,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: RoundedScore(
                    score: user.score,
                  ),
                ),
              ],
            ),
          ),
          Text(
            user.pseudo,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Button(
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (context) =>
                      ImagePickerModeSelector(onPress: pickImage),
                );
              },
              icon: Icons.photo_camera_front_outlined,
              text: "Change profile picture",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Button(
              onPressed: () {
                this.logout(context);
              },
              icon: Icons.logout,
              text: "Déconnexion",
            ),
          ),
        ]),
      ),
    );
  }
}
