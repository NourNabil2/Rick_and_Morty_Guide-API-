import '../model/characters.dart';
import '../web_service/characters_service.dart';

class charactherREPOSITORY{

final characterSERVICE  Service ;

charactherREPOSITORY(this.Service);

Future<List<Character>> getallcharacter () async
{
  final characters = await Service.getallcharacter();
  return characters.map((character)=>Character.fromJson(character)).toList() ;
}


}