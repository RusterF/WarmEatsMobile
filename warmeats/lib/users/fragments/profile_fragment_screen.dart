import 'package:flutter/material.dart';

class ProfileFragmentScreen extends StatelessWidget {
  const ProfileFragmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/images/background3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.075,
              left: MediaQuery.of(context).size.width * 0.1,
              right: MediaQuery.of(context).size.width * 0.1,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('lib/assets/images/warmeats.png'),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.3,
              left: 0,
              right: 0,
              child: Center(
                child: Text("Profile"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
