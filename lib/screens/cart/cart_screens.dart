
import 'package:flutter/material.dart';
import 'package:shop/models/cart_model.dart';
import 'package:shop/models/models.dart';
import 'package:shop/widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CartScreen()
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CastomAppBar(title: 'Корзинка'),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 35,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white),
              onPressed: () {},
               child: Text('ОФОРМИТЬ ЗАКАЗ', 
               style: Theme.of(context).textTheme.headline3!), 
               )
          ],),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                    Cart().freeDeliveryString,
                    style: Theme.of(context).textTheme.headline5,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      }, 
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(),
                        elevation: 0,
                      ),
                      child: Text(
                        'Добавить',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white,
                          ),
                      ),
                      )
                  ],
                  ),
            SizedBox(height: 2),

            SizedBox(height: 400,
              child: ListView.builder(
                itemCount: Cart().products.length,
                itemBuilder:(context, index) {
                  return CartProductCard(product: Cart().products[index]);
                }),
            ),
          ],
        ),
            Column(children: [
              Divider(thickness: 2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ПРОМЕЖУТОЧНЫЙ ИТОГ:',
                          style: Theme.of(context).textTheme.headline5,
                          ),
                        Text(
                          '${Cart().subtotalString}\p', 
                          style: Theme.of(context).textTheme.headline5,
                          )
                      ],
                    ),
                  SizedBox(height: 5),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ДОСТАВКА:',
                      style: Theme.of(context).textTheme.headline5,
                      ),
                    Text(
                      '${Cart().deliveryFreeString}\p',
                      style: Theme.of(context).textTheme.headline5,
                      )
                    ],
                  ),
                ],
              ),
            ),
              Stack(children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black.withAlpha(50),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.all(5.0),
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'К ОПЛАТЕ:',
                              style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.white),
                              ),
                            Text(
                              '${Cart().totalString}\p',
                              style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                      ),
                    ),
                  ],
                ),
              ],),
              ],
            ),
      ),
    );
  }
}

