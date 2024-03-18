//máximo status é 255

import 'stats_entity.dart';

class PokemonEntity {
  final String name;
  final String image;
  final List<String> abilities;
  final List<String> moves;
  final List<String> types;
  final List<String> evolutions;
  final List<StatsEntity> stats;

  PokemonEntity({
    this.name = '',
    this.image = '',
    this.abilities = const [],
    this.moves = const [],
    this.types = const [],
    this.evolutions = const [],
    this.stats = const [],
  });

  PokemonEntity copyWith({
    String? name,
    String? image,
    List<String>? abilities,
    List<String>? moves,
    List<String>? types,
    List<StatsEntity>? stats,
  }) =>
      PokemonEntity(
        name: name ?? this.name,
        image: image ?? this.image,
        abilities: abilities ?? this.abilities,
        moves: moves ?? this.moves,
        types: types ?? this.types,
        stats: stats ?? this.stats,
      );

  @override
  String toString() =>
      'PokemonEntity(\n text: $name, \n image: $image, \n abilities: ${abilities.toList()}\n)';

  bool isEmpty() => name.isEmpty;
}
