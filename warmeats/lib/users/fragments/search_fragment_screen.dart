import 'package:flutter/material.dart';
import 'package:warmeats/components/my_textfield.dart';

class SearchFragmentScreen extends StatelessWidget {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/images/background3.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 75,
                left: 0,
                right: 0,
                child: MyTextField(
                  controller: searchController,
                  hintText: 'cari warmindo',
                  obscureText: false,
                  icon: Icons.search,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
