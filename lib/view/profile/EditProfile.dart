import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController accountController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool obscurePassword = true;

  @override
  void initState() {
    super.initState();
    nameController.text = 'John Doe';
    phoneController.text = '1234567890';
    emailController.text = 'john.doe@example.com';
    addressController.text = '123 Main St, City, Country';
    accountController.text = 'john_doe';
    passwordController.text = 'password123';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin cá nhân'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildTextField(
              controller: nameController,
              labelText: 'Họ và tên',
              icon: Icons.person,
            ),
            const SizedBox(height: 20),
            _buildTextField(
              controller: phoneController,
              labelText: 'Số điện thoại',
              icon: Icons.phone,
            ),
            const SizedBox(height: 20),
            _buildTextField(
              controller: emailController,
              labelText: 'Email',
              icon: Icons.email,
            ),
            const SizedBox(height: 20),
            _buildTextField(
              controller: addressController,
              labelText: 'Địa chỉ',
              icon: Icons.location_on,
            ),
            const SizedBox(height: 20),
            _buildAccountTextField(),
            const SizedBox(height: 20),
            _buildPasswordTextField(),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Xử lý khi nhấn nút
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFE0000),
                elevation: 5,
                shadowColor: const Color(0xFFFE0000).withOpacity(0.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Save',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18, 
                  fontWeight: FontWeight.bold, 
                  letterSpacing: 1.2, 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    required IconData icon,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(
          icon,
          color: const Color(0xFFFE0000), 
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _buildAccountTextField() {
    return TextField(
      controller: accountController,
      enabled: false,
      decoration: InputDecoration(
        labelText: 'Tài khoản',
        prefixIcon: const Icon(Icons.account_circle, color: Color(0xFFFE0000),),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: passwordController,
          obscureText: obscurePassword,
          decoration: InputDecoration(
            labelText: 'Mật khẩu',
            prefixIcon: const Icon(Icons.lock, color: Color(0xFFFE0000)),
            suffixIcon: IconButton(
              icon: Icon(
                  obscurePassword ? Icons.visibility : Icons.visibility_off ,color: const Color(0xFFFE0000)),
              onPressed: () {
                setState(() {
                  obscurePassword = !obscurePassword;
                });
              },
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
