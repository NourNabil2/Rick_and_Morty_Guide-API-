import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Data/model/characters.dart';
import '../Data/respone/character_repo.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final charactherREPOSITORY charactersRepository;
  List<Character> character = [];
  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  List<Character> getallcharacter()
  {
    charactersRepository.getallcharacter().then((character) {
      emit(CharactersLoaded(character));
      this.character = character ;
    });

    return character ;
  }
}