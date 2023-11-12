import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zoidak_shoes_app/providers/cart_provider.dart';

import '../widegts/cart_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);
  static const double defaultMargin = 16.0;

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: const Color(0xff1F1D2B),
        centerTitle: true,
        title: const Text('Your Cart'),
        elevation: 0,
      );
    }

    Widget emptyCart() {
      return Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icon_empty_cart.png',
            width: 80,
          ),
          const SizedBox(
            height: 22.5,
          ),
          const Text(
            'Ops! Your Cart is Empty',
            style: TextStyle(
              color: Color(0xffF1F0F2),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Lwt\'s find your favourite shoes',
            style: TextStyle(
              color: Color(0xff999999),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 154,
            height: 44,
            margin: const EdgeInsets.only(top: 20),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xff6C5ECF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )),
              child: const Text(
                'Explore Store',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ));
    }

    Widget customButtonNav() {
      return SizedBox(
        height: 180,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Subtotal',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '\$${cartProvider.totalPrice()}',
                    style: const TextStyle(
                      color: Color(0xff2C96F1),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              thickness: 0.8,
              color: Color(0xff504F5E),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xff6C5ECF),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/checkout', (route) => false);
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Continue to Checkout',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  )),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: cartProvider.carts
            .map(
              (cart) => CartCard(cart),
            )
            .toList(),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xff242231),
      appBar: header(),
      body: cartProvider.carts.isEmpty ? emptyCart() : content(),
      bottomNavigationBar:
          cartProvider.carts.isEmpty ? const SizedBox() : customButtonNav(),
    );
  }
}
