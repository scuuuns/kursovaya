import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop/models/product_model.dart';
import 'package:shop/widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';

  static Route route({required Product product}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => ProductScreen(product: product),
      );
  }

  final Product product;

  const ProductScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CastomAppBar(title: product.name),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 35,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.share, color: Colors.white)),
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.favorite,color: Colors.white)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white),
              onPressed: () {},
               child: Text('В КОРЗИНКУ', 
               style: Theme.of(context).textTheme.headline3!), 
               )
          ],),
        ),
      ),
      body: ListView(
          children: [
             CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.8,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
                items: [HeroCarouselCard(
                  product: product,
                  )
                ],
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    alignment: Alignment.bottomCenter,
                    color: Colors.black.withAlpha(50),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 10,
                    height: 50,
                    margin: const EdgeInsets.all(5.0),
                    color: Colors.white70,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.name,
                            style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: Colors.black),
                          ),
                          Text(
                            '${product.price}',
                            style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: Colors.black),
                          ),

                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ExpansionTile(
                initiallyExpanded: true,
                title:Text('Информация о товаре',
                  style: Theme.of(context).textTheme.headline2),
                children: [
                  ListTile(
                    title: Text (
                      'Блалалалаллалаллалалала',
                      style: Theme.of(context).textTheme.bodyText1,
                      ),
                  )
                ],
                ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ExpansionTile(
                title:Text('Характеристики',
                  style: Theme.of(context).textTheme.headline2),
                children: [
                  ListTile(
                    title: Text (
                      'происхождения дизайн тартата',
                      style: Theme.of(context).textTheme.bodyText1,
                      ),
                  )
                ],
                ),
            ),
          ],
        ),
      // HeroCarouselCard(
      //   product: product,
      // ),
    );
  }
}