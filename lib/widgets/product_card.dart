import 'package:flutter/material.dart';
import 'package:shop/models/models.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double widthFactor;
  final double leftPosition;
  final bool isWishlist;

  const ProductCard({
    Key? key,
    required this.product,
    this.widthFactor = 2.5,
    this.leftPosition = 5,
    this.isWishlist = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthValue = MediaQuery.of(context).size.width / widthFactor;
    
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/product',
          arguments: product,
        );
      },
      child: Stack(
        children: [
          Container(
            width: widthValue,
            height: 120,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
              ),
          ),
          Positioned(
            top: 40,
            left: leftPosition,
            child: Container(
              width: widthValue - 5 - leftPosition,
              height: 80,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(50),
              ),
            ),
          ),
          Positioned(
            top: 45,
            left: leftPosition  + 5,
            child: Container(
              width: widthValue - 10 - leftPosition,
              height: 70,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Colors.white70,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: Colors.black,
                            ),
                            ),
                            Text(
                            '${Product.products[0].price}\pyб',
                            style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.black,
                            ),
                            ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                         icon: Icon(Icons.add_circle, color: Colors.white,),
                        ),
                    ),
                    isWishlist 
                        ?  Expanded(
                      child: IconButton(
                        onPressed: () {},
                         icon: Icon(Icons.delete, color: Colors.white,),
                        ),
                    )
                      :SizedBox(),
                   ],
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
