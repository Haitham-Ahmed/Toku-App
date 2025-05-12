// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
// import 'package:toku_app/models/number.dart';

// class ItemInfo extends StatelessWidget {
//   const ItemInfo({Key? key, required this.itemModel, required ItemModel item})
//       : super(key: key);

//   final ItemModel itemModel;
  
//   get item => null;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 itemModel.jpName,
//                 style: TextStyle(color: Colors.white, fontSize: 18),
//               ),
//               Text(
//                 itemModel.enName,
//                 style: TextStyle(color: Colors.white, fontSize: 18),
//               ),
//             ],
//           ),
//         ),
//         Spacer(
//           flex: 1,
//         ),
//         IconButton(
//           onPressed: () {
//             item.playSound();
//           },
//           icon: const Icon(
//             Icons.play_arrow,
//             color: Colors.white,
//             size: 28,
//           ),
//         ),
//       ],
//     );
//   }
// }





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
