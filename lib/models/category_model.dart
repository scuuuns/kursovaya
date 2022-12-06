import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });


  @override
  List<Object?> get props => [name, imageUrl];
  
  static List<Category> categories = [
    Category(
      name: 'LETS PARTY',
      imageUrl: 
        'https://sun9-65.userapi.com/impg/9EQ0q6QMQf4_LskVm5Is6T6chfya5D1iz57wJQ/WmeswHKg1ic.jpg?size=736x1104&quality=95&sign=f049844fda9eea06c3fec10417102f1d&type=album'
      ),
      Category(
      name: 'Falling in love',
      imageUrl: 
        'https://sun9-30.userapi.com/impg/hAqSQCncTjMlaI0qd8XG3HM_U4G5W23l6KDayw/IEOGE0ZKJHc.jpg?size=670x668&quality=95&sign=2495a9b4cb3a29544f8637a33669e858&type=album'
      ),
      Category(
      name: 'its time to go OUTSIDE',
      imageUrl: 
        'https://sun9-11.userapi.com/impg/3SP-9yH1TOeMOEfixmspaRf-VnaGtMuoamVhmw/bvZAt-cFdCA.jpg?size=400x400&quality=95&sign=6115c124f05f8d1ecdc6b0fadfef1db2&type=album'
      ),
  ];
  }

  