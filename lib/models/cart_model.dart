import 'package:equatable/equatable.dart';
import 'package:shop/models/product_model.dart';

class Cart extends Equatable{
  Cart();

  double get subtotal => 
    products.fold(0, (total,current) => total + current.price);

    double deliveryFree(subtotal) {
      if (subtotal>=1700.0) {
        return 0.0;
      } else
        return 300.0;
    }

    double total(subtotal, deliveryFree){
        return subtotal + deliveryFree(subtotal);
    }

    String freeDelivery(subtotal) {
      if (subtotal>=1700.0) {
        return 'Бесплатная доставка';
      } else{
        double missing = 1700.0 - subtotal;
        return 'Не хватает ${missing.toStringAsFixed(2)} до бесплатной доставки';

      }
        
    }

  String get subtotalString => subtotal.toStringAsFixed(2);
  String get totalString => total(subtotal, deliveryFree).toStringAsFixed(2);
  String get deliveryFreeString => deliveryFree(subtotal).toStringAsFixed(2);
  String get freeDeliveryString => freeDelivery(subtotal);
  List<Product> products = [
    Product(
      name: 'Футболка OverSize #1', 
      category: 'its time to go OUTSIDE', 
      imageUrl: 
        'https://sun9-70.userapi.com/impg/GZ0Ah-Q2NYhgHtWBwbZGPLOF1TlgRzqiVPJIRQ/PMRdOfEtzRc.jpg?size=480x480&quality=95&sign=a1535551645296b8c35a6ea5ad03475e&type=album',
      price: 650, 
      isPopular: false, 
      isRecommended: true,
      ),
    Product(
      name: 'Футболка OverSize #2', 
      category: 'Футболка OverSize', 
      imageUrl: 
        'https://sun9-29.userapi.com/impg/jyidATiYZkbEXkPijvgRxcSk9mIM5o1XiMU0Qg/6-ybtbYWFpM.jpg?size=600x600&quality=95&sign=da710e583a369f83ab65d30ee301a63d&type=album', 
      price: 700, 
      isPopular: true, 
      isRecommended: false,
      ),
    Product(
      name: 'Футболка OverSize #3', 
      category: 'its time to go OUTSIDE', 
      imageUrl: 
        'https://sun9-62.userapi.com/impg/8W-RrAJkF1l_85CCh8N3Wav7qi8wc7Huf94LRA/qLwh90vfiS0.jpg?size=736x736&quality=95&sign=217b2c9b057bcae7137bea0c987f2243&type=album', 
      price: 480, 
      isPopular: true, 
      isRecommended: true,
      ),
    Product(
      name: 'Футболка OverSize #4', 
      category: 'its time to go OUTSIDE', 
      imageUrl: 
        'https://sun9-66.userapi.com/impg/-PC8F_FKXMfodWgNZOI2-LkLOew8x5AENHP-3w/faLXFGwo9cQ.jpg?size=736x736&quality=95&sign=3db5f74c7e1c83a889daeef5333fb92f&type=album', 
      price: 560, 
      isPopular: false, 
      isRecommended: true,
      ),
      Product(
      name: 'Футболка OverSize #6', 
      category: 'its time to go OUTSIDE', 
      imageUrl: 
        'https://sun9-53.userapi.com/impg/iSoE8zOqyl-HJqQLsc9aiHzapZjXk_g7JIOmcg/Y5QJI5VaVjk.jpg?size=735x1003&quality=95&sign=5263c2cf0f7d4494a25a4b30a055946e&type=album', 
      price: 430, 
      isPopular: true, 
      isRecommended: false,
      ),
      Product(
      name: 'Футболка OverSize #9', 
      category: 'its time to go OUTSIDE', 
      imageUrl: 
        'https://sun9-47.userapi.com/impg/7D2rdthtPnXtvk7xkt6bJtG8l06gIyKFq90giA/qhYuTge95gs.jpg?size=736x1103&quality=95&sign=bafe853400467803a1f83e02509a2107&type=album',
      price: 650, 
      isPopular: false, 
      isRecommended: false,
      ),
      Product(
      name: 'Футболка OverSize #10', 
      category: 'its time to go OUTSIDE', 
      imageUrl: 
        'https://sun9-52.userapi.com/impg/KndpiZbzTRpFkHBxrWPnj7Be3Wr0IFxdJdyX6w/lxJL1Z78Wgc.jpg?size=736x968&quality=95&sign=66d8527c966f451a455a198543257f52&type=album',
      price: 650, 
      isPopular: false, 
      isRecommended: false,
      ),
      Product(
      name: 'Футболка OverSize #11', 
      category: 'its time to go OUTSIDE', 
      imageUrl: 
        'https://sun9-5.userapi.com/impg/6AY9hqJOvyy1I_4996MWMp2gV88f8M4V9y9o_g/uQz7pjAqtW8.jpg?size=736x919&quality=95&sign=b215654275fbddf64d5b1205137f78ee&type=album',
      price: 650, 
      isPopular: false, 
      isRecommended: false,
      ),
      Product(
      name: 'Футболка OverSize #11', 
      category: 'its time to go OUTSIDE', 
      imageUrl: 
        'https://sun9-11.userapi.com/impg/3SP-9yH1TOeMOEfixmspaRf-VnaGtMuoamVhmw/bvZAt-cFdCA.jpg?size=400x400&quality=95&sign=6115c124f05f8d1ecdc6b0fadfef1db2&type=album',
      price: 650, 
      isPopular: false, 
      isRecommended: false,
      ),


      Product(
      name: 'Футболка OverSize #12', 
      category: 'Falling in love', 
      imageUrl: 
        'https://sun9-68.userapi.com/impg/aYVCjfj0mfGfQv5bwLHpvyYuJg0dgXIoHVIdUw/0n-uMGhkAIQ.jpg?size=548x827&quality=95&sign=84a774a1ddb595d2cef68dd651d4f49d&type=album', 
      price: 670, 
      isPopular: false, 
      isRecommended: false,
      ),
      Product(
      name: 'Футболка OverSize #13', 
      category: 'Falling in love', 
      imageUrl: 
        'https://sun9-42.userapi.com/impg/mICjZSYD7PLFF2QqOdOH10HMPwWDVX10ow85Nw/uJlmE49EJ6U.jpg?size=736x736&quality=95&sign=a4f9561fe2bc2c23c7f11d38e1c661fa&type=album', 
      price: 670, 
      isPopular: false, 
      isRecommended: false,
      ),
      Product(
      name: 'Футболка OverSize #14', 
      category: 'Falling in love', 
      imageUrl: 
        'https://sun9-52.userapi.com/impg/x0eEGsaK758KPw9waEcziDyIQ_HVyvoNe4E4gQ/pvbZPrA_Ps4.jpg?size=499x497&quality=95&sign=42c825d4ad7c03c6fcffabc24463c784&type=album', 
      price: 670, 
      isPopular: false, 
      isRecommended: false,
      ),
      Product(
      name: 'Футболка OverSize #15', 
      category: 'Falling in love', 
      imageUrl: 
        'https://sun9-30.userapi.com/impg/hAqSQCncTjMlaI0qd8XG3HM_U4G5W23l6KDayw/IEOGE0ZKJHc.jpg?size=670x668&quality=95&sign=2495a9b4cb3a29544f8637a33669e858&type=album', 
      price: 670, 
      isPopular: false, 
      isRecommended: false,
      ),
      Product(
      name: 'Футболка OverSize #16', 
      category: 'Falling in love', 
      imageUrl: 
        'https://sun4-12.userapi.com/impg/zsSA97iuDcAia2MpuzIu4GZB3WDAGNzpyoFKyA/upwZJdjA7ZY.jpg?size=750x750&quality=95&sign=d5334e94cb04e26b68a4d03d821191af&type=album', 
      price: 670, 
      isPopular: false, 
      isRecommended: false,
      ),

      Product(
      name: 'Футболка OverSize #16', 
      category: 'LETS PARTY', 
      imageUrl: 
        'https://sun9-58.userapi.com/impg/bgjY7Qqat72wB5a1bkTGffr5IXnaUPqGWznDyA/WetlPWYD8dY.jpg?size=405x539&quality=95&sign=399b47db8df40af071f09c978ad0a42f&type=album', 
      price: 670, 
      isPopular: false, 
      isRecommended: false,
      ),
      Product(
      name: 'Футболка OverSize #7', 
      category: 'LETS PARTY', 
      imageUrl: 
        'https://sun9-7.userapi.com/impg/pD-S5q0zjvCwvMLiPNzejN0nXy5UlhLPJ2BaMQ/uXF-ZJf1kc8.jpg?size=736x980&quality=95&sign=31e172dc9fe9f199675ff43ae418878e&type=album', 
      price: 580, 
      isPopular: true, 
      isRecommended: false,
      ),
      Product(
      name: 'Футболка OverSize #8', 
      category: 'LETS PARTY', 
      imageUrl: 
        'https://sun9-79.userapi.com/impg/V4EAZknUtaACe1e5rC4dthzoocoI9DjgGFi5mw/XZ3smgXzdJ8.jpg?size=736x980&quality=95&sign=76413035d7f3647d0a794571bc2d5a59&type=album', 
      price: 920, 
      isPopular: true, 
      isRecommended: false,
      ),
      Product(
      name: 'Футболка OverSize #17', 
      category: 'LETS PARTY', 
      imageUrl: 
        'https://sun9-65.userapi.com/impg/9EQ0q6QMQf4_LskVm5Is6T6chfya5D1iz57wJQ/WmeswHKg1ic.jpg?size=736x1104&quality=95&sign=f049844fda9eea06c3fec10417102f1d&type=album', 
      price: 670, 
      isPopular: false, 
      isRecommended: false,
      ),
      Product(
      name: 'Футболка OverSize #17', 
      category: 'LETS PARTY', 
      imageUrl: 
        'https://sun9-46.userapi.com/impg/Qap36gjT-4uReSHUWfMBK8Uu3Voep9GkgXJl2A/gq-5QQfaZjY.jpg?size=736x969&quality=95&sign=84b2de5c2b9ed146a7ae3e973477e3d6&type=album', 
      price: 670, 
      isPopular: false, 
      isRecommended: false,
      ),
      
  ];
  
  @override
  List<Object?> get props => [];
}