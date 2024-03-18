import '../../domain/entities/all_pokemon_entity.dart';

class PokemonResultsModel {
  int? count;
  String? next;
  String? previous;
  List<Results>? results;

  PokemonResultsModel({this.count, this.next, this.previous, this.results});

  AllPokemonEntity toEntity() => AllPokemonEntity()
      .copyWith(name: results?.map((e) => e.name ?? '').toList());

  PokemonResultsModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((value) {
        results!.add(Results.fromJson(value));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    data['next'] = next;
    data['previous'] = previous;
    if (results != null) {
      data['results'] = results!.map((value) => value.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String? name;
  String? url;

  Results({this.name, this.url});

  Results.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}
