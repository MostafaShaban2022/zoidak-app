import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zoidak_shoes_app/pages/cart_page.dart';
import 'package:zoidak_shoes_app/pages/checkout_page.dart';
import 'package:zoidak_shoes_app/pages/edit_profile_page.dart';
import 'package:zoidak_shoes_app/pages/main_page.dart';
import 'package:zoidak_shoes_app/pages/sign_in_page.dart';
import 'package:zoidak_shoes_app/pages/splash_page.dart';
import 'package:zoidak_shoes_app/providers/auth_provider.dart';
import 'package:zoidak_shoes_app/providers/cart_provider.dart';
import 'package:zoidak_shoes_app/providers/product_provider.dart';
import 'package:zoidak_shoes_app/providers/transaction_provider.dart';
import 'package:zoidak_shoes_app/providers/wishlist_provider.dart';
import 'package:zoidak_shoes_app/ui/pages/checkout_success_page.dart';

import '../../pages/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider<ProductProvider>(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider<WishlistProvider>(
          create: (context) => WishlistProvider(),
        ),
        ChangeNotifierProvider<CartProvider>(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider<TransactionProvider>(
          create: (context) => TransactionProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => const SignUpPage(),
          '/home': (context) => const MainPage(),
          '/edit-profile': (context) => const EditProfilePage(),
          '/cart': (context) => const CartPage(),
          '/checkout': (context) => const CheckoutPage(),
          '/checkout-success': (context) => const CheckoutSuccessPage(),
        },
      ),
    );
  }
}
