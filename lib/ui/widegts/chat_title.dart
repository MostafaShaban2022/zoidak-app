import 'package:flutter/material.dart';


class ChatTitlePage extends StatelessWidget {
  const ChatTitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: const EdgeInsets.only(top: 33,
              left: 25),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/image_shop_logo.png',
                    width: 54,
                  ),
                  const SizedBox(width: 12,),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ListTile(
                        //   onTap: (){
                        //     Routs.instance.push(widget: DetailChatPage(), context: context);
                        //   },
                        //   title: Text('data'),
                        //   trailing:Icon(Icons.message) ,
                        //   leading: Icon(Icons.chat),
                        // ),
                        Text('Zoidak Store',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text('Good night,This item is on...',
                          style: TextStyle(
                            color: Color(0xff999999),
                            fontWeight: FontWeight.w500,

                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('Now',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff999999),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12,),
              const Divider(
                thickness: 1,
                color: Color(0xff2B2939),
              )
            ],
          ),

    ) ;
  }
}
