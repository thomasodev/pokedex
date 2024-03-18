import 'package:flutter/material.dart';
import 'package:pokedex/domain/entities/item_entity.dart';
import 'package:pokedex/shared/utils/string_utils.dart';

class ItemPage extends StatelessWidget {
  final ItemEntity item;

  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(item.name.replaceAll('-', ' ').capitalize()),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 32),
            if (item.image.isNotEmpty)
              Container(
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
                child: Image.network(
                  item.image,
                  fit: BoxFit.cover,
                ),
              ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                item.name.replaceAll('-', ' ').capitalize(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                  shadows: [
                    Shadow(
                      offset: const Offset(0, 3),
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 2,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            _buildInfoRow(
                'Category', item.category.replaceAll('-', ' ').capitalize()),
            _buildInfoRow('Cost', item.formattedCost()),
            _buildInfoRow(
                'Item Description', item.flavorText.replaceAll('\n', ' ')),
            _buildInfoRow('Effect', item.shortEffect),
            _buildInfoRow('Detailed Effect', item.effect.replaceAll('\n', ' ')),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            content,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
