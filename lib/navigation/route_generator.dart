import 'package:flutter/material.dart';
import 'package:riverpod_demo/navigation/app_routes.dart';
import 'package:riverpod_demo/screens/character_details/presentation/character_details_screen.dart';
import 'package:riverpod_demo/screens/favorite/presentation/favorite_screen.dart';
import 'package:riverpod_demo/utils/arguments.dart';

import '../screens/audio_demo/presentation/audio_player_screen.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.initialRoute:
        return MaterialPageRoute(
            builder: (context) => AudioPlayerScreen(
                /*isNetworkUrl: true,
                  networkFileUrl: 'https://flutter-sound.canardoux.xyz/extract/01.aac',*/
                ));
      case AppRoutes.characterDetailsRoute:
        return MaterialPageRoute(
            builder: (context) => CharacterDetailsScreen(
                  arg: settings.arguments as CharacterDetailsArg,
                ));
      case AppRoutes.favoriteRoute:
        return MaterialPageRoute(builder: (context) => FavoriteScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Error"),
          ),
          body: const Center(
            child: Text("Page Not Found"),
          ),
        );
      },
    );
  }
}
