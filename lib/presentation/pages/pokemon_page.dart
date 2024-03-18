import 'package:flutter/material.dart';
import 'package:pokedex/domain/entities/pokemon_entity.dart';
import 'package:pokedex/domain/entities/stats_entity.dart';
import 'package:pokedex/shared/utils/string_utils.dart';
import 'package:pokedex/shared/utils/type_color_utils.dart';

class PokemonPage extends StatefulWidget {
  final PokemonEntity pokemon;

  const PokemonPage({super.key, required this.pokemon});

  @override
  State<PokemonPage> createState() => _PokemonPageState();
}

class _PokemonPageState extends State<PokemonPage> {
  @override
  Widget build(BuildContext context) {
    final colors = TypeColorUtils.colorsForTypes(widget.pokemon.types);
    final hasManyColors = colors.length > 1;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.pokemon.name.capitalize()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const SizedBox(height: 32),
            if (widget.pokemon.image.isNotEmpty)
              Container(
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
                  child: Image.network(widget.pokemon.image)),
            const SizedBox(height: 8),
            Center(
              child: Text(
                widget.pokemon.name.capitalize(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                  shadows: [
                    Shadow(
                      offset: Offset(0, 3),
                      color: Colors.grey,
                      blurRadius: 2,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            _buildLabel("Types"),
            _buildType(widget.pokemon.types),
            _buildLabel("Abilities"),
            _buildList(widget.pokemon.abilities),
            _buildLabel("Moves"),
            _buildList(widget.pokemon.moves),
            _buildLabel("Stats"),
            ...widget.pokemon.stats.map((e) => _buildStats(e)),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String label) {
    return Center(
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget _buildList(List<String> items) {
    return Wrap(
      children: items.map((item) => _buildItem(item)).toList(),
    );
  }

  Widget _buildType(List<String> items) {
    return Wrap(
      children: items
          .map((item) => Card(
                color: TypeColorUtils.colorType(item),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
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
              ))
          .toList(),
    );
  }

  Widget _buildItem(String item) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            item,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStats(StatsEntity stats) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        '(${stats.name} : ${stats.baseStat})',
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
