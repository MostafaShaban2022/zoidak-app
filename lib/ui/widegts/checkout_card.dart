import 'package:flutter/material.dart';
import 'package:zoidak_shoes_app/models/cart_model.dart';

class CheckoutCard extends StatelessWidget {
  final CartModel cart;
  const CheckoutCard (this.cart, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        color: const Color(0xff252836),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image:  DecorationImage(
                image: NetworkImage(
                cart.product.galleries[0].url,
                ),
              )
            ),
          ),
          const SizedBox(width: 12,),
           Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cart.product.name as String,
                  style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4.5,),
                 Text(
                  '\$${cart.product.price}',
                style: const TextStyle(
                  color: Color(0xff2C96F1),
                ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12,),
           Text(
            '${cart.quantity}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff999999),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
