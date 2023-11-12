import 'package:flutter/material.dart';
import 'package:zoidak_shoes_app/widegts/chat_bubble.dart';

class DetailChatPage extends StatelessWidget {

  static const double defaultMargin = 16.0;

  const DetailChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: AppBar(
          backgroundColor: const Color(0xff1F1D2B),
          centerTitle: false,
          title: Row(
            children: [
              Image.asset(
                'assets/image_shop_logo_online.png',
                width: 49.5,
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'zoidak store',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Online',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
    Widget productPreview() {
      return Container(
        width: 225,
        height: 74,
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color(0xff2B2844),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: const Color(0xff6C5ECF),
            )
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/image_shoes.png',
                width: 54,),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Court Vision 2.0',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text('\$58.55', style: TextStyle(color: Color(0xff2C96F1),
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                ],
              ),
            ),
            Image.asset('assets/button_close.png', width: 22,),
          ],
        ),
      );
    }


    Widget chatInput() {
      return Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productPreview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xff252836),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Type a message...',
                        hintStyle: TextStyle(
                          color: Color(0xff504F5E),
                          fontWeight: FontWeight.bold,
                        ),
                        border: InputBorder.none,
                      ),
                    ),

                  ),
                ),
                const SizedBox(width: 20,),
                Image.asset('assets/button_send.png',
                  width: 45,
                ),

              ],
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
          children:const [
             ChatBubble(
                isSender: true,
                text: 'Hi, is this item still available?',
               hasProduct: true,
            ),
            ChatBubble(
              isSender: true,
              text: 'Good night, This item is only available in size 43 and 42.',
            ),
          ]

      );
    }


    return Scaffold(
      backgroundColor: const Color(0xff242231),
      appBar: header(),
      body: Column(
        children: [
          Expanded(
            child: content(),
          ),
        ],
      ),
      bottomNavigationBar: chatInput(),
    );


  }
}