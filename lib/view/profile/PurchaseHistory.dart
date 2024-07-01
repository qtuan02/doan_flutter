import 'package:flutter/material.dart';

class PurchaseHistoryPage extends StatefulWidget {
  const PurchaseHistoryPage({super.key});

  @override
  _PurchaseHistoryPageState createState() => _PurchaseHistoryPageState();
}

class _PurchaseHistoryPageState extends State<PurchaseHistoryPage> {
  List<String> purchases = [
    'Đơn hàng ngày 01/07/2024',
    'Đơn hàng ngày 25/06/2024',
    'Đơn hàng ngày 15/06/2024',
    'Đơn hàng ngày 10/06/2024',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lịch sử mua hàng',),
      ),
      body: ListView.builder(
        itemCount: purchases.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ListTile(
                title: Text(
                  purchases[index],
                  style: const TextStyle(
                    color: Color(0xFFFE0000),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text('Chi tiết đơn hàng'),
                trailing: const Icon(Icons.arrow_forward_ios, color: Color(0xFFFE0000)),
                onTap: () {
                  // Xử lý khi nhấn vào một đơn hàng
                },
              ),
            ),
          );
        },
      ),
    );
  }
}