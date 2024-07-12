import 'package:flutter/material.dart';
import 'package:warmeats/components/my_textfield.dart';

class HomeFragmentsScreen extends StatelessWidget {
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
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 250, // Adjust height as needed
                  decoration: BoxDecoration(
                    color: Colors.red[800],
                    borderRadius: BorderRadius.circular(
                        30), // Half of width or height for a circle
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'Waktu Pemesanan',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 220,
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
