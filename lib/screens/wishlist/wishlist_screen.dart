import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/blocs/wishlist/wishlist_bloc.dart';
import 'package:shop/models/product_model.dart';
import 'package:shop/widgets/widgets.dart';

class WishlistScreen extends StatelessWidget {
  static const String routeName = '/wishlist';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => WishlistScreen()
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CastomAppBar(title: 'Избранное'),
      bottomNavigationBar: CustomNamBar(),
      body: BlocBuilder<WishlistBloc,WishlistState>(
        builder: (context, state) {
          if (state is WishlistLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );}
          if (state is WishlistLoaded) {
            return GridView.builder(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 16.0,
              ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, childAspectRatio: 2.4),
            itemCount: state.wishlist.products.length,
            itemBuilder: (BuildContext context, int index) {
            return Center(
              child: ProductCard(
                product:state.wishlist.products[index],
                widthFactor: 1.1,
                leftPosition: 100,
                isWishlist: true,
                ),
            );
          },
        );
      }
          else {
            return Text('Опаньки, неполадочка случилась(');
          }
        },
      ),
    );
  }
}