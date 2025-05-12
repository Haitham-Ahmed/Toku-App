import 'package:flutter/material.dart';
import 'package:toku_app/models/number.dart';
import 'package:audioplayers/audioplayers.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.itemModel});

  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                itemModel.jpName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                itemModel.enName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            playSound(itemModel);
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 28,
          ),
        ),
      ],
    );
  }
}

void playSound(ItemModel itemModel) {
  final player = AudioPlayer();
  player.play(AssetSource(itemModel.sound));
}
