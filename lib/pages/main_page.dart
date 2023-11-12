import 'package:flutter/material.dart';
import 'package:zoidak_shoes_app/pages/profile_Page.dart';
import 'package:zoidak_shoes_app/pages/wishlist_page.dart';

import 'chat_page.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  Widget cartButton(){
    return FloatingActionButton(
        onPressed:(){
          Navigator.pushNamed(context,  '/cart');
        },
      child:
      Image.asset(
        'assets/icon_cart.png',
      width: 20,
      ),
    );
  }

  Widget CustomButtonNav(){
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(30),
    ),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 13,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: const Color(0xff252836),
          currentIndex: currentIndex,
          onTap: (value){
           print(value);
           setState(() {
             currentIndex = value;

           });
              },
          type: BottomNavigationBarType.fixed,
          items:[
            BottomNavigationBarItem(
              icon:Container(
                margin: const EdgeInsets.only(top: 20,bottom: 10),
                child: Image.asset(
                    'assets/icon_home.png',
                  width: 21,
                  color: currentIndex == 0?const Color(0xff6C5ECF) :const Color(0xff808191),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon:Container(
                margin: const EdgeInsets.only(top: 20,bottom: 10),
                child: Image.asset(
                  'assets/icon_chat.png',
                  width: 21,
                  color: currentIndex == 1 ?const Color(0xff6C5ECF) :const Color(0xff808191),

                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon:Container(
                margin: const EdgeInsets.only(top: 20,bottom: 10),
                child: Image.asset(
                  'assets/icon_wishlist.png',
                  width: 21,
                  color: currentIndex == 2 ?const Color(0xff6C5ECF) :const Color(0xff808191),

                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon:Container(
                margin: const EdgeInsets.only(top: 20,bottom: 10),
                child: Image.asset(
                  'assets/icon_profile.png',
                  width: 21,
                  color: currentIndex == 3?const Color(0xff6C5ECF) :const Color(0xff808191),

                ),
              ),
              label: '',
            ),
        ],
        ),
      ),
    );
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const ChatPage();
      case 2:
        return const WishlistPage();
      case 3:
        return const ProfilePage();
      default:
      // Handle the case when currentIndex doesn't match any known cases
        return const HomePage(); // or any other default widget you want to return
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentIndex == 0 ? const Color(0xff1F1D2B): const Color(0xff242231),
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomButtonNav(),
      body: body(),
    );
  }
}
