// import 'package:flutter/material.dart';
// import 'package:toku_app/components/item_info.dart';
// import 'package:toku_app/models/number.dart';

// class PhraseaItem extends StatelessWidget {
//   const PhraseaItem(
//       {Key? key,
//       required this.item,
//       required String sound,
//       required this.color})
//       : super(key: key);

//   final ItemModel item;
//   final Color color;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100,
//       color: color,
//       child: ItemInfo(itemModel: item, item: item),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:toku_app/components/item_info.dart';
import 'package:toku_app/models/number.dart';

class PhraseaItem extends StatelessWidget {
  const PhraseaItem({
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
      child: ItemInfo(itemModel: item),
    );
  }
}
