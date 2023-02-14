import '../model/characters.dart';
import '../web_service/characters_service.dart';

class charactherREPOSITORY{

late final characterSERVICE Service ;

charactherREPOSITORY(this.Service);

Future<List<Character>> getallcharacter () async
{
  // final Map<String,dynamic> characters = await Service.getallcharacter();
  // print('suiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii');
  // return characters.map((character)=>Character.fromJson(character)).toList() ;

  final Map<String,dynamic> charcters=await Service.getallcharacter();
  try{
    final ggwp=charcters['results'].map((character)=>Character.fromJson(character)).toList();
    final iHateThisApp=ggwp.cast<Character>( );
    return iHateThisApp;
  }catch(e){
    print("shiiiiiiiiiiiiiiit");
    print(e);
    throw e;
  }
}


}