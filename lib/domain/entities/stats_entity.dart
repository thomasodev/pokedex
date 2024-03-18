class StatsEntity {
  final String name;
  final int baseStat;

  StatsEntity({
    this.name = '',
    this.baseStat = 0,
  });

  StatsEntity copyWith({
    String? name,
    int? baseStat,
  }) =>
      StatsEntity(
        name: name ?? this.name,
        baseStat: baseStat ?? this.baseStat,
      );
}
