import 'package:flutter/material.dart';

class OrderFragmentScreen extends StatelessWidget {
  const OrderFragmentScreen({super.key});

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
          child: Center(
            child: Text("Order"),
          ),
        ),
      ),
    );
  }
}
