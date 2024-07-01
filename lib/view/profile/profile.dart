import 'package:banhangdienmay/view/product/ProductFavorite.dart';
import 'package:banhangdienmay/view/profile/EditProfile.dart';
import 'package:banhangdienmay/view/profile/PurchaseHistory.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  ProfilePage createState() => ProfilePage();
}

class ProfilePage extends State<Profile> {
  String userName = 'Abc'; 
  String userEmail = '123@gmail.com'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF9F9F9),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(24, 32, 24, 24),
              child: Row(
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
                        padding: const EdgeInsets.fromLTRB(10, 10, 15.2, 16),
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
                    margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Text(
                      'Profile',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        height: 1.4,
                        color: const Color(0xFF101817),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/avatar.jpg'),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    userName,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    userEmail,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                children: [
                  _buildProfileItem(
                    context,
                    icon: Icons.person,
                    
                    title: 'Thông tin cá nhân',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditProfilePage(),
                        ),
                      );
                    },
                  ),
                  _buildProfileItem(
                    context,
                    icon: Icons.shopping_bag,
                    title: 'Lịch sử mua hàng',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PurchaseHistoryPage(),
                        ),
                      );
                    },
                  ),
                  _buildProfileItem(
                    context,
                    icon: Icons.favorite,
                    title: 'Yêu thích',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Favorite(),
                        ),
                      );
                    },
                  ),
                  _buildProfileItem(
                    context,
                    icon: Icons.logout,
                    title: 'Logout',
                    onTap: () {
                      // Xử lý khi nhấn vào Logout
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileItem(BuildContext context,
      {required IconData icon, required String title, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 24,
              color: const Color(0xFFFE0000),
            ),
            const SizedBox(width: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
