class Character {
  late int id;
  late String name;
  late String status;
  late String species;
  late String gender;
  late String image;
  late String created;
  late List<dynamic> origin;

  Character.fromJson(Map<String, dynamic> Json) {
    id = Json['id'];
    name = Json['name'];
    status = Json['status'];
    species = Json['species'];
    gender = Json['gender'];
    image = Json['image'];
    created = Json['created'];
    origin = Json['origin'];
  }
}

final baseURL = 'https://rickandmortyapi.com/api/';
