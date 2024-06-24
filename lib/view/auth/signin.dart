import 'package:banhangdienmay/common/global.dart';
import 'package:flutter/material.dart';
import 'package:banhangdienmay/api/fetchApi.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _account = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    _account.dispose();
    _password.dispose();
    super.dispose();
  }

  void _handleLogin(String account, String password) async {
    final data = await handlerSignIn(account, password);
    if (data['status'] == 200) {
      final token = data['data']['token'] ?? '';
      if (token.isNotEmpty) {
        handleShowToast(data['message']);
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('token', token);
        if (mounted) {
          Navigator.pop(context);
        }
      } else {
        handleShowToast('Không nhận được token từ server');
      }
    } else {
      handleShowToast(data['message']);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đăng nhập'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Chào mừng quý khách! Vui lòng đăng nhập!',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _account,
              decoration: const InputDecoration(
                labelText: 'Tài khoản',
                hintText: 'Nhập tài khoản...',
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
            TextButton(
              onPressed: () { GoRouter.of(context).push('/signup'); },
              child: const Text(
                'Chưa có tài khoản? Đăng ký ngay!',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: (){
                _handleLogin(_account.text, _password.text);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                textStyle: const TextStyle(color: Colors.white),
              ),
              child: const Text('Đăng nhập'),
            ),
          ],
        ),
      ),
    );
  }
}
