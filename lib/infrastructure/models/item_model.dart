import 'package:pokedex/domain/entities/item_entity.dart';

class ItemModel {
  int? id;
  String? name;
  int? cost;
  int? flingPower;
  FlingEffect? flingEffect;
  List<Attributes>? attributes;
  FlingEffect? category;
  List<EffectEntries>? effectEntries;
  List<FlavorTextEntries>? flavorTextEntries;
  List<GameIndices>? gameIndices;
  List<Names>? names;
  List<HeldByPokemon>? heldByPokemon;
  BabyTriggerFor? babyTriggerFor;
  Sprites? sprites;

  ItemModel({
    this.id,
    this.name,
    this.cost,
    this.flingPower,
    this.flingEffect,
    this.attributes,
    this.category,
    this.effectEntries,
    this.flavorTextEntries,
    this.gameIndices,
    this.names,
    this.heldByPokemon,
    this.babyTriggerFor,
    this.sprites,
  });

  ItemEntity toEntity() => ItemEntity().copyWith(
        name: name,
        image: sprites?.image,
        category: category?.name,
        effect: effectEntries?.first.effect,
        flavorText: flavorTextEntries?.first.text,
        shortEffect: effectEntries?.first.shortEffect,
        cost: cost,
      );

  ItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    cost = json['cost'];
    flingPower = json['fling_power'];
    flingEffect = json['fling_effect'] != null
        ? FlingEffect.fromJson(json['fling_effect'])
        : null;
    if (json['attributes'] != null) {
      attributes = <Attributes>[];
      json['attributes'].forEach((v) {
        attributes!.add(Attributes.fromJson(v));
      });
    }
    category = json['category'] != null
        ? FlingEffect.fromJson(json['category'])
        : null;
    if (json['effect_entries'] != null) {
      effectEntries = <EffectEntries>[];
      json['effect_entries'].forEach((v) {
        effectEntries!.add(EffectEntries.fromJson(v));
      });
    }
    if (json['flavor_text_entries'] != null) {
      flavorTextEntries = <FlavorTextEntries>[];
      json['flavor_text_entries'].forEach((v) {
        flavorTextEntries!.add(FlavorTextEntries.fromJson(v));
      });
    }
    if (json['game_indices'] != null) {
      gameIndices = <GameIndices>[];
      json['game_indices'].forEach((v) {
        gameIndices!.add(GameIndices.fromJson(v));
      });
    }
    if (json['names'] != null) {
      names = <Names>[];
      json['names'].forEach((v) {
        names!.add(Names.fromJson(v));
      });
    }
    if (json['held_by_pokemon'] != null) {
      heldByPokemon = <HeldByPokemon>[];
      json['held_by_pokemon'].forEach((v) {
        heldByPokemon!.add(HeldByPokemon.fromJson(v));
      });
    }
    babyTriggerFor = json['baby_trigger_for'] != null
        ? BabyTriggerFor.fromJson(json['baby_trigger_for'])
        : null;
    sprites =
        json['sprites'] != null ? Sprites.fromJson(json['sprites']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['cost'] = cost;
    data['fling_power'] = flingPower;
    if (flingEffect != null) {
      data['fling_effect'] = flingEffect!.toJson();
    }
    if (attributes != null) {
      data['attributes'] = attributes!.map((v) => v.toJson()).toList();
    }
    if (category != null) {
      data['category'] = category!.toJson();
    }
    if (effectEntries != null) {
      data['effect_entries'] = effectEntries!.map((v) => v.toJson()).toList();
    }
    if (flavorTextEntries != null) {
      data['flavor_text_entries'] =
          flavorTextEntries!.map((v) => v.toJson()).toList();
    }
    if (gameIndices != null) {
      data['game_indices'] = gameIndices!.map((v) => v.toJson()).toList();
    }
    if (names != null) {
      data['names'] = names!.map((v) => v.toJson()).toList();
    }
    if (heldByPokemon != null) {
      data['held_by_pokemon'] = heldByPokemon!.map((v) => v.toJson()).toList();
    }
    if (babyTriggerFor != null) {
      data['baby_trigger_for'] = babyTriggerFor!.toJson();
    }
    if (sprites != null) {
      data['sprites'] = sprites!.toJson();
    }
    return data;
  }
}

class FlingEffect {
  String? name;
  String? url;

  FlingEffect({this.name, this.url});

  FlingEffect.fromJson(Map<String, dynamic> json) {
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

class Attributes {
  String? name;
  String? url;

  Attributes({this.name, this.url});

  Attributes.fromJson(Map<String, dynamic> json) {
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

class EffectEntries {
  String? effect;
  String? shortEffect;
  FlingEffect? language;

  EffectEntries({this.effect, this.shortEffect, this.language});

  EffectEntries.fromJson(Map<String, dynamic> json) {
    effect = json['effect'];
    shortEffect = json['short_effect'];
    language = json['language'] != null
        ? FlingEffect.fromJson(json['language'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['effect'] = effect;
    data['short_effect'] = shortEffect;
    if (language != null) {
      data['language'] = language!.toJson();
    }
    return data;
  }
}

class FlavorTextEntries {
  String? text;
  FlingEffect? versionGroup;
  FlingEffect? language;

  FlavorTextEntries({this.text, this.versionGroup, this.language});

  FlavorTextEntries.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    versionGroup = json['version_group'] != null
        ? FlingEffect.fromJson(json['version_group'])
        : null;
    language = json['language'] != null
        ? FlingEffect.fromJson(json['language'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    if (versionGroup != null) {
      data['version_group'] = versionGroup!.toJson();
    }
    if (language != null) {
      data['language'] = language!.toJson();
    }
    return data;
  }
}

class GameIndices {
  int? gameIndex;
  FlingEffect? generation;

  GameIndices({this.gameIndex, this.generation});

  GameIndices.fromJson(Map<String, dynamic> json) {
    gameIndex = json['game_index'];
    generation = json['generation'] != null
        ? FlingEffect.fromJson(json['generation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['game_index'] = gameIndex;
    if (generation != null) {
      data['generation'] = generation!.toJson();
    }
    return data;
  }
}

class Names {
  String? name;
  FlingEffect? language;

  Names({this.name, this.language});

  Names.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    language = json['language'] != null
        ? FlingEffect.fromJson(json['language'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    if (language != null) {
      data['language'] = language!.toJson();
    }
    return data;
  }
}

class HeldByPokemon {
  FlingEffect? pokemon;
  List<VersionDetails>? versionDetails;

  HeldByPokemon({this.pokemon, this.versionDetails});

  HeldByPokemon.fromJson(Map<String, dynamic> json) {
    pokemon =
        json['pokemon'] != null ? FlingEffect.fromJson(json['pokemon']) : null;
    if (json['version_details'] != null) {
      versionDetails = <VersionDetails>[];
      json['version_details'].forEach((v) {
        versionDetails!.add(VersionDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (pokemon != null) {
      data['pokemon'] = pokemon!.toJson();
    }
    if (versionDetails != null) {
      data['version_details'] = versionDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class VersionDetails {
  int? rarity;
  FlingEffect? version;

  VersionDetails({this.rarity, this.version});

  VersionDetails.fromJson(Map<String, dynamic> json) {
    rarity = json['rarity'];
    version =
        json['version'] != null ? FlingEffect.fromJson(json['version']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rarity'] = rarity;
    if (version != null) {
      data['version'] = version!.toJson();
    }
    return data;
  }
}

class BabyTriggerFor {
  String? url;

  BabyTriggerFor({this.url});

  BabyTriggerFor.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    return data;
  }
}

class Sprites {
  String? image;

  Sprites({this.image});

  Sprites.fromJson(Map<String, dynamic> json) {
    image = json['default'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['default'] = image;
    return data;
  }
}
