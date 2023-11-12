import 'package:flutter/material.dart';

class CheckoutSuccessPage extends StatelessWidget {
  const CheckoutSuccessPage({Key? key}) : super(key: key);
  static const double defaultMargin = 16.0;


  @override
  Widget build(BuildContext context) {

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: const Color(0xff1F1D2B),
        centerTitle: true,
        title: const Text(
          'Checkout Success'
        ),
        elevation: 0,
      );
    }

    Widget content () {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icon_empty_cart.png',
            width: 80,
            ),
            const SizedBox(height: 20,),
            const Text('You Made a transaction',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            ),
            const SizedBox(height: 12,),
            const Text(
              'Stay at home when we\nprepare your dream shoes',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff999999),
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              width: 196,
              height: 44,
              margin: const EdgeInsets.only(
                top: defaultMargin,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xff6C5ECF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Order Other Shoes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              width: 196,
              height: 44,
              margin: const EdgeInsets.only(
                top: 12,
              ),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xff39374B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('View My Order',
                  style: TextStyle(
                    color: Color(0xffB7B6Bf),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }


    return Scaffold(
      backgroundColor: const Color(0xff242231),
      appBar: header(),
      body: content(),
    );
  }
}
