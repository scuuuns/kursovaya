import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop/models/category_model.dart';
import 'package:shop/models/models.dart';
import 'package:shop/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen()
      );
  }
  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      appBar: CastomAppBar(title: 'PACOSTSHOP'),
      bottomNavigationBar: CustomNamBar(),
      body: Column(
        children: [
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.8,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: Category.categories
                .map((category) => HeroCarouselCard(category: category))
                .toList(),
            ),
          ),
          SectionTitle (title: 'РЕКОМЕНДАЦИИ'),
           ProductCarousel(products: Product.products
           .where((product) => product.isRecommended).
           toList()),
           SectionTitle (title: 'СУПЕР ПОПУЛЯРНОЕ'),
           ProductCarousel(products: Product.products
           .where((product) => product.isPopular).
           toList()),
        ],
      ),
    );
  }
}





