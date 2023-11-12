import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {

  final String text;
  final bool isSender;
  final bool hasProduct;
  const ChatBubble({ this.isSender = false, this.text='',this.hasProduct = false,});


  @override
  Widget build(BuildContext context) {

    Widget productPreview(){
      return Container(
        width: 230,
          margin: const EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(isSender ? 12:0),
            topRight: Radius.circular(isSender ? 0:12),
            bottomLeft: const Radius.circular(12),
          bottomRight: const Radius.circular(12),
          ),
            color: isSender ? const Color(0xff2B2844) : const Color(0xff252836),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/image_shoes.png',
                      width: 70,),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(' Court Vision 2.0 shoes',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(height: 4,),
                      Text(' \$58.55',
                          style: TextStyle(
                              color: Color(0xff2C96F1),
                              fontWeight: FontWeight.bold
                          ),
                      ),
                    ],

                  ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: (){},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Color(0xff6C5ECF),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                      child: const
                      Text('add to card',
                        style: TextStyle(
                          color: Color(0xff6C5ECF),
                        ),
                      ),
                  ),
                  const SizedBox(width: 8,),
                  TextButton(
                    onPressed: (){},
                     style: TextButton.styleFrom(
                       backgroundColor: const Color(0xff6C5ECF),
                        shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(8),
                       ),
                         ),

                    child: const Text(
                    'Buy Now',
                      style: TextStyle(
                        color: Color(0xff2B2844),
                      ),

                      ),
                  ),

                ],
              )
            ],
          ),
          );



    }




    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
       child: Column(
         mainAxisAlignment: isSender ? MainAxisAlignment.end: MainAxisAlignment.start,
         children: [
           hasProduct ? productPreview() : const SizedBox(),
           Row(
              mainAxisAlignment: isSender ? MainAxisAlignment.end: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width *0.6,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      color: Color(0xff2B2844),
                    ),
                    child:  Text(
                      text,
                      style: const TextStyle(
                          color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
         ],
       ),

    );
  }
}
