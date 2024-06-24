import 'package:banhangdienmay/view/login/signup.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  SigninPage createState() => SigninPage();
}

class SigninPage extends State<Signin> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
            ),
            child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF9F9F9),
                ),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(24, 32, 9.5, 184),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 16, 0, 32),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    context.go('/home');
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Container(
                                      width: 48,
                                      height: 48,
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 10, 15.2, 16),
                                      child: const SizedBox(
                                        width: 17.8,
                                        height: 16,
                                        child: Icon(
                                          Icons.arrow_back,
                                          color: Color(0xFFFE0000),
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 8),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Chào mừng quý khách!',
                                      style: GoogleFonts.getFont(
                                        'Roboto Condensed',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 32,
                                        height: 1.3,
                                        color: const Color(0xFF101817),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Vui lòng đăng nhập.',
                                  style: GoogleFonts.getFont(
                                    'Roboto Condensed',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.5,
                                    color: const Color(0xFF828A89),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 14.5, 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  'Email',
                                  style: GoogleFonts.getFont(
                                    'Roboto Condensed',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    height: 1.4,
                                    color: const Color(0xFF101817),
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 12),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'Nhập vào gmail',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 14.5, 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  'Password',
                                  style: GoogleFonts.getFont(
                                    'Roboto Condensed',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    height: 1.4,
                                    color: const Color(0xFF101817),
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 12),
                                child: TextFormField(
                                    obscureText: _obscureText,
                                    decoration: InputDecoration(
                                      hintText: 'Nhập vào mật khẩu',
                                      border: InputBorder.none,
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          _obscureText
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                        ),
                                        onPressed: _togglePasswordVisibility,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 24),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              width: 160,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Chưa có tài khoản?',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      height: 1.4,
                                      color: const Color(0xFF101817),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Signup()),
                                      );
                                    },
                                    child: Text(
                                      'Đăng ký',
                                      style: GoogleFonts.getFont(
                                        'Roboto Condensed',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        height: 1.4,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            
                          },
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 14.5, 16),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFFE0000),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 16, 5.9, 16),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Sign In',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      height: 1.5,
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 14.5, 24),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 23.5,
                                    height: 24,
                                    child: SvgPicture.asset(
                                      'assets/logo_google.svg',
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'Sign In With Google',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      height: 1.5,
                                      color: const Color(0xFF101817),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))));
  }
  
}
