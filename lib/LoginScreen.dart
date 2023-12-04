import 'package:flutter/material.dart';
import 'OTPScreen.dart';
class LoginPage extends StatelessWidget {
  final TextEditingController _phoneNumberController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Authentication'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              controller: _phoneNumberController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'Enter Phone Number',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // TODO: Perform phone number authentication
                String phoneNumber = _phoneNumberController.text.trim();
                // Simulate authentication success, navigate to OTP page
                if (phoneNumber.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OTPPage(phoneNumber: phoneNumber, verificationId: '',),
                    ),
                  );
                } else {
                  // Show error or handle empty phone number
                }
              },
              child: const Text('Verify Phone Number'),
            ),
          ],
        ),
      ),
    );
  }
}
