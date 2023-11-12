import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zoidak_shoes_app/widegts/wishlist_card.dart';

import '../providers/wishlist_provider.dart';

class WishlistPage extends StatelessWidget {
  static const double defaultMargin = 16.0;

  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider =
    Provider.of<WishlistProvider>(context, listen: false);


    Widget header() {
      return AppBar(
        backgroundColor: const Color(0xff1F1D2B),
        centerTitle: true,
        title: const Text(
          'Favourite Shoes'
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWishlist(){
      return Expanded(
        child: Container(
          width: double.infinity,
          color: const Color(0xff242231),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/image_wishlist.png',
              width: 74,
              ),
              const SizedBox(height: 23,),
              const Text('you don\'t have dream shoes?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
              ),
              ),
                  const SizedBox(height: 12,),
                  const Text('Let\'s find your favourite shoes',
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff999999),
                  ),
                  ),
                     const SizedBox(height: 20,),
              TextButton(
                  onPressed: (){},
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 24,
                  ),
                  backgroundColor: const Color(0xff6C5ECF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
                  child: const Text(
                    'Explore Store',style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                    ),
                  ),

              ],
          ),

        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: const Color(0xff242231),
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            children: wishlistProvider.wishlist
                .map((product) => WishlistCard(product: product))
                .toList(),
          ),
        ),
      );
    }


    return Column(
    children: [
      header(),
      //emptyWishlist(),
     wishlistProvider.wishlist.isEmpty ? emptyWishlist() : content(),
    ],
  );
  }
}
