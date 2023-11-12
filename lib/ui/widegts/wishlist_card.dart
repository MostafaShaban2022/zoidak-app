import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zoidak_shoes_app/models/product_model.dart';
import 'package:zoidak_shoes_app/providers/wishlist_provider.dart';

class WishlistCard extends StatelessWidget {
  final ProductModel product;

  const WishlistCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider =
    Provider.of<WishlistProvider>(context, listen: false);

    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 14,
        left: 12,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xff252836),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              product.galleries[0].url,
              width: 60,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name as String,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xffF1F0F2),
                  ),
                ),
                const SizedBox(height: 4.2),
                Text(
                  '\$${product.price}',
                  style: const TextStyle(
                    color: Color(0xff2C96F1),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              wishlistProvider.setProduct(product);
            },
            child: Image.asset(
              'assets/button_wishlist_blue.png',
              width: 34,
            ),
          ),
        ],
      ),
    );
  }
}
