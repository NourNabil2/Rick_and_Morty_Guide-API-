import 'package:dio/dio.dart';
import 'package:rick_and_morty_guide/Data/model/characters.dart';



class characterSERVICE
{
  late Dio dio ;
  characterSERVICE()
  {


    BaseOptions options = BaseOptions(
      baseUrl: baseURL,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
    );

    dio=Dio(options);
  }

  Future<List<dynamic>> getallcharacter () async
  {
    try {
      Response response = await dio.get('character');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }

  }

}

