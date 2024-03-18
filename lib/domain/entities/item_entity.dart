class ItemEntity {
  final String name;
  final String image;
  final String category;
  final String flavorText;
  final String shortEffect;
  final String effect;
  final int cost;

  ItemEntity({
    this.name = '',
    this.image = '',
    this.category = '',
    this.flavorText = '',
    this.shortEffect = '',
    this.effect = '',
    this.cost = 0,
  });

  ItemEntity copyWith({
    String? name,
    String? image,
    String? category,
    String? flavorText,
    String? shortEffect,
    String? effect,
    int? cost,
  }) =>
      ItemEntity(
        name: name ?? this.name,
        image: image ?? this.image,
        category: category ?? this.category,
        flavorText: flavorText ?? this.flavorText,
        shortEffect: shortEffect ?? this.shortEffect,
        effect: effect ?? this.effect,
        cost: cost ?? this.cost,
      );

  @override
  String toString() => 'ItemEntity(\n text: $name, \n image: $image,}\n)';

  bool isEmpty() => name.isEmpty;

  String formattedCost() =>
      cost != 0 ? '$cost PokéDollars' : 'Unable to purchase this item';
}
