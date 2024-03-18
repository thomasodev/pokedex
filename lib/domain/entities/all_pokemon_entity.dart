class AllPokemonEntity {
  final List<String> name;

  AllPokemonEntity({
    this.name = const [],
  });

  AllPokemonEntity copyWith({
    List<String>? name,
  }) =>
      AllPokemonEntity(
        name: name ?? this.name,
      );

  @override
  String toString() => 'AllPokemonEntity(\n text: $name';

  bool isEmpty() => name.isEmpty;
}
