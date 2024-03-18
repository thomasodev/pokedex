import 'package:flutter/material.dart';
import 'package:pokedex/domain/entities/item_entity.dart';
import 'package:pokedex/presentation/pages/item_page.dart';
import 'package:pokedex/shared/utils/string_utils.dart';

class ItemCard extends StatefulWidget {
  final ItemEntity item;
  const ItemCard({
    super.key,
    required this.item,
  });

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemPage(
              item: widget.item,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            colors: [
              Colors.blue.withOpacity(0.5),
              Colors.blue,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            tileMode: TileMode.clamp,
          ),
        ),
        child: Column(
          children: [
            Image.network(
              widget.item.image,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.item.name.replaceAll('-', ' ').capitalize(),
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
