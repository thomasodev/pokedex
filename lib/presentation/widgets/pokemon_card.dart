import 'package:flutter/material.dart';
import 'package:pokedex/presentation/pages/pokemon_page.dart';
import 'package:pokedex/shared/utils/string_utils.dart';
import 'package:pokedex/shared/utils/type_color_utils.dart';

import '../../domain/entities/pokemon_entity.dart';

class PokemonCard extends StatefulWidget {
  final PokemonEntity pokemon;
  const PokemonCard({
    super.key,
    required this.pokemon,
  });

  @override
  State<PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends State<PokemonCard> {
  @override
  Widget build(BuildContext context) {
    final colors = TypeColorUtils.colorsForTypes(widget.pokemon.types);
    final hasManyColors = colors.length > 1;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PokemonPage(
              pokemon: widget.pokemon,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: hasManyColors
              ? LinearGradient(
                  colors: colors,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  tileMode: TileMode.clamp,
                )
              : null,
          color: hasManyColors ? null : colors.first,
        ),
        child: Column(
          children: [
            Image.network(
              widget.pokemon.image,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.pokemon.name.capitalize(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      offset: Offset(0, 3),
                      color: Colors.black,
                      blurRadius: 2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
