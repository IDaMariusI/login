import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:login/services/services.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        leading: IconButton(
          onPressed: () {
            authService.logout();
            Navigator.pushReplacementNamed(context, 'login');
          },
          icon: const Icon(Icons.login_outlined),
        ),
      ),
      body: const Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
