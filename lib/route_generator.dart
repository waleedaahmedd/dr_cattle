import 'package:dr_cattle/screens/farms_list_screen.dart';
import 'package:dr_cattle/screens/login_screen.dart';
import 'package:dr_cattle/screens/sign_up_screen.dart';
import 'package:dr_cattle/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/forget_password':
      //  return MaterialPageRoute(builder: (_) => ForgetPasswordScreen());
      case '/sign_up':
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case '/farms_list_screen':
        return MaterialPageRoute(builder: (_) => const FarmsListScreen());
      case '/wineryDetails':
      //   return MaterialPageRoute(builder: (_) => const WineryDetailsScreen());
      case '/my_reservation':
      //   return MaterialPageRoute(builder: (_) => const MyReservationScreen());
      case '/tasting_list':
      //    return MaterialPageRoute(builder: (_) => const TastingListScreen());
      case '/wineries_list':
      //    return MaterialPageRoute(builder: (_) => const WineriesListScreen());
      case '/tasting_details':
      /*return MaterialPageRoute(
            builder: (_) => const TastingDetailsScreen(),
            settings: const RouteSettings(name: '/tasting_details'));*/
      case '/wines_details':
      /*return MaterialPageRoute(
            builder: (_) => WinesDetailScreen(
                  reviewButton: args,
                ));*/

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(
          child: Text('Something wrong in routes'),
        ),
      );
    });
  }
}
