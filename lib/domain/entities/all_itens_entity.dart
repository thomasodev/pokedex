class AllItensEntity {
  final List<String> name;

  AllItensEntity({
    this.name = const [],
  });

  AllItensEntity copyWith({
    List<String>? name,
  }) =>
      AllItensEntity(
        name: name ?? this.name,
      );

  @override
  String toString() => 'AllItensEntity(\n text: $name';

  bool isEmpty() => name.isEmpty;
}
