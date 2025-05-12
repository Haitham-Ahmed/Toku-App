import 'package:flutter/material.dart';
import 'package:toku_app/components/item_info.dart';
import '../models/number.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.item,
    required this.color,
  });

  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: item.image != null
          ? Row(
              children: [
                Container(
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(item.image!),
                ),
                Expanded(child: ItemInfo(itemModel: item)),
              ],
            )
          : ItemInfo(itemModel: item),
    );
  }
}
