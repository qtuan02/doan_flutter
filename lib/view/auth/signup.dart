import 'package:banhangdienmay/common/global.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:banhangdienmay/api/fetchApi.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    _phone.dispose();
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  void _handleRegister(String phone, String email, String password) async {
    final data = await handlerSignUp(phone, email, password);
    if (data['status'] == 200) {
        handleShowToast(data['message']);
        if (mounted) {
          Navigator.pop(context);
        }
    } else {
      handleShowToast(data['message']);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đăng kí'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Đăng kí tài khoản ngay!',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _phone,
              decoration: const InputDecoration(
                labelText: 'Số điện thoại',
                hintText: 'Nhập số điện thoại...',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange), // Viền cam khi focus
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange), // Viền cam
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _email,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Nhập email...',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange), // Viền cam khi focus
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange), // Viền cam
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _password,
              decoration: const InputDecoration(
                labelText: 'Mật khẩu',
                hintText: 'Nhập mật khẩu...',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange), // Viền cam khi focus
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange), // Viền cam
                ),
              ),
              obscureText: true, // Ẩn mật khẩu
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: (){
                _handleRegister(_phone.text, _email.text, _password.text);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                textStyle: const TextStyle(color: Colors.white),
              ),
              child: const Text('Đăng kí'),
            ),
          ],
        ),
      ),
    );
  }
}
