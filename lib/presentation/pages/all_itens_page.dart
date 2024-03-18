import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex/presentation/stores/item_store.dart';
import 'package:pokedex/presentation/widgets/item_card.dart';

import '../../shared/components/loader.dart';

class AllItensPage extends StatefulWidget {
  const AllItensPage({super.key});

  @override
  State<AllItensPage> createState() => _AllItensPageState();
}

class _AllItensPageState extends State<AllItensPage> {
  late final ItemStore store;

  @override
  void initState() {
    store = ItemStore();
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
    return Observer(
      builder: (context) {
        return (store.itemlist.isEmpty)
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
                  itemCount: store.itemlist.length,
                  itemBuilder: (context, index) {
                    if (index + 1 == store.limit) {
                      store.addMoreCards();
                      return const Loader();
                    }
                    return ItemCard(item: store.itemlist[index]);
                  },
                ),
              );
      },
    );
  }
}
