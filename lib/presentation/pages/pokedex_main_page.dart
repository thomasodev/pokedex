import 'package:flutter/material.dart';
import 'package:pokedex/presentation/pages/all_itens_page.dart';
import 'package:pokedex/presentation/pages/all_pokemons_page.dart';

class PokedexMainPage extends StatelessWidget {
  const PokedexMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Pokedex'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Pokémons'),
              Tab(text: 'Itens'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            PokemonTab(),
            ItemTab(),
          ],
        ),
      ),
    );
  }
}

class PokemonTab extends StatelessWidget {
  const PokemonTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const AllPokemonsPage();
  }
}

class ItemTab extends StatelessWidget {
  const ItemTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const AllItensPage();
  }
}
