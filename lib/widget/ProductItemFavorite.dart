import 'package:banhangdienmay/model/productModel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductItemFavorite extends StatelessWidget {
  final ProductModel product;

  const ProductItemFavorite({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final discountedPrice = product.promotion > 0
        ? product.price * (1 - product.promotion / 100)
        : product.price;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0), 
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration( 
                    image: DecorationImage(
                      image: NetworkImage(product.img), 
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                if (product.promotion > 0)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFA500),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      child: Text("${product.promotion}%"),
                    ),
                  ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    child: const Icon(Icons.favorite, color: Color(0xFFFE0000), size: 20),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name, style: const TextStyle(fontSize: 12)),
                const SizedBox(height: 5),
                Row(
                  children: [
                    if (product.promotion > 0) ...[
                      Text(
                        "₫${NumberFormat.decimalPattern().format(discountedPrice)}",
                        style: const TextStyle(color: Color(0xFFFE0000)),
                      ),
                      const SizedBox(width: 5),
                    ] else
                      Text(
                        "₫${NumberFormat.decimalPattern().format(product.price)}",
                        style: const TextStyle(color: Color(0xFFFE0000)),
                      ),
                    const Spacer(),
                    Text(
                      'Đã bán ${NumberFormat.decimalPattern().format(product.quantitySold)}',
                      style: const TextStyle(fontSize: 9),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
