import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Bloc/characters_cubit.dart';
import '../Data/model/characters.dart';
import '../Data/respone/character_repo.dart';
import '../Data/web_service/characters_service.dart';
import 'DetailsScreen.dart';
import 'HomeScreen.dart';


class AppRouter {
  late charactherREPOSITORY charactersRepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepository = charactherREPOSITORY(characterSERVICE());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (contxt) => BlocProvider(
            create: (BuildContext contxt) => charactersCubit,
            child: MyHomePage(),
          ),
        );
break;
      case '/DetailsScreen':
        final character = settings.arguments as Character;

        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) =>
                CharactersCubit(charactersRepository),
            child: DetailsScreen(
              character: character,
            ),
          ),
        );

    }
  }
}