import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../shared/components/loader.dart';
import '../stores/pokemon_store.dart';
import '../widgets/pokemon_card.dart';

class AllPokemonsPage extends StatefulWidget {
  const AllPokemonsPage({super.key});

  @override
  State<AllPokemonsPage> createState() => _AllPokemonsPageState();
}

class _AllPokemonsPageState extends State<AllPokemonsPage> {
  late final PokemonStore store;

  @override
  void initState() {
    store = PokemonStore();
    store.getAll();
    super.initState();
  }

  @override
  void dispose() {
    store.dipose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return (store.pokelist.isEmpty)
          ? const Loader()
          : Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,
                ),
                itemCount: store.pokelist.length,
                itemBuilder: (context, index) {
                  if (index + 1 == store.limit) {
                    store.addMoreCards();
                    return const Loader();
                  }
                  return PokemonCard(
                    pokemon: store.pokelist[index],
                  );
                },
              ),
            );
    });
  }
}
