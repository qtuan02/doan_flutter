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
  bool _isObscure = true;

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
          GoRouter.of(context).go('/home');
        }
      } else {
        handleShowToast('Không nhận được token từ server');
      }
    } else {
      handleShowToast(data['message']);
    }
  }

  void _toggleObscure() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.go('/home');
          },
        ),
        title: const Text('Đăng nhập'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png', 
                  width: 150, 
                  height: 150, 
                  fit: BoxFit.contain, 
                ),
              ],
            ),
            const SizedBox(height: 10.0),
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
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
            controller: _password,
            decoration: InputDecoration(
              labelText: 'Mật khẩu',
              hintText: 'Nhập mật khẩu...',
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility_off : Icons.visibility,
                  color: Colors.orange,
                ),
                onPressed: _toggleObscure,
              ),
            ),
            obscureText: _isObscure,
          ),
            TextButton(
              onPressed: () {
                GoRouter.of(context).push('/signup');
              },
              child: const Text(
                'Chưa có tài khoản? Đăng ký ngay!',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
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
