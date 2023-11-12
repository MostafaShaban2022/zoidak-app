import 'package:flutter/material.dart';
import 'package:zoidak_shoes_app/models/product_model.dart';
import 'package:zoidak_shoes_app/pages/product_page.dart';

class ProductTile extends StatelessWidget {
  static const double defaultMargin = 16.0;

  final ProductModel product;
  const ProductTile(this.product, {super.key});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       Navigator.push(
           context,
         MaterialPageRoute(
           builder: (context) => ProductPage(product),
       ),
       );
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                product.galleries[0].url,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.category.name,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 6,),
                  Text(
                    product.name as String,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 6,),
                  Text(
                    '\$${product.price}',
                    style: const TextStyle(
                      fontSize: 12.5,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff2C96F1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

