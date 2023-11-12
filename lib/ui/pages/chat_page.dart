import 'package:flutter/material.dart';
import 'package:zoidak_shoes_app/Routs/rout.dart';
import 'package:zoidak_shoes_app/pages/detail_chat_page.dart';

class ChatPage extends StatelessWidget {
  static const double defaultMargin = 16.0;

  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: const Color(0xff1F1D2B),
        centerTitle: true,
        title: const Text(
          'Message Support',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptychat() {
      return Container(
        margin: const EdgeInsets.only(top: 33, left: 25),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/image_shop_logo.png',
                  width: 54,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                       //  dense: true,
                       //  tileColor: Colors.white30,
                       // focusColor: Colors.black,
                       //  splashColor: Colors.red,

                        onTap: () {
                          Routs.instance
                              .push(widget: const DetailChatPage(), context: context);
                        },


                        title: const Text(
                          'Zoidak Store',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.5),

                        ),

                        subtitle:
                        const Text('Good night,This item is on...',
                          style: TextStyle(
                            color: Color(0xff999999),
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                      ),


                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Now',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff999999),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xff2B2939),
            )
          ],
        ),
      );
    }

    return Column(
      children: [
        header(),
        emptychat(),
      ],
    );
  }
}
