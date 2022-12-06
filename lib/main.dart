import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/blocs/wishlist/wishlist_bloc.dart';
import 'package:shop/config/app_router.dart';
import 'package:shop/config/theme.dart';
import 'package:shop/screens/screens.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WishlistBloc()..add(StartWishlist())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PACOSTSHOP',
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: HomeScreen.routeName,

      ),
    );
  }
}



