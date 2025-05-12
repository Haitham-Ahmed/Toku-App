
// import 'package:flutter/material.dart';
// import 'package:toku_app/components/item.dart';
// import '../models/number.dart';

// class FamilyMemebersPage extends StatelessWidget {
//   const FamilyMemebersPage({Key? key}) :super(key: key);

//   final List<ItemModel> number = const [
//     ItemModel(
//       sound: 'sounds/family_members/father.wav',
//       image: 'assets/images/family_members/family_father.png',
//       jpName: 'Chichioya',
//       enName: 'father',
//     ),
//     ItemModel(
//       sound: 'sounds/family_members/mother.wav',
//       image: 'assets/images/family_members/family_mother.png',
//       jpName: 'Hahaoya',
//       enName: 'mother',
//     ),
//     ItemModel(
//       sound: 'sounds/family_members/grand father.wav',
//       image: 'assets/images/family_members/family_grandfather.png',
//       jpName: 'Sofu',
//       enName: 'grand father',
//     ),
//     ItemModel(
//       sound: 'sounds/family_members/grand mother.wav',
//       image: 'assets/images/family_members/family_grandmother.png',
//       jpName: 'Sobo',
//       enName: 'grand mother',
//     ),
//     ItemModel(
//       sound: 'sounds/family_members/older bother.wav',
//       image: 'assets/images/family_members/family_older_brother.png',
//       jpName: 'Ani',
//       enName: 'older bother',
//     ),
//     ItemModel(
//       sound: 'sounds/family_members/son.wav',
//       image: 'assets/images/family_members/family_son.png',
//       jpName: 'Musuko',
//       enName: 'son',
//     ),
//     ItemModel(
//       sound: 'sounds/family_members/older sister.wav',
//       image: 'assets/images/family_members/family_older_sister.png',
//       jpName: 'Ane',
//       enName: 'older sister',
//     ),
//     ItemModel(
//       sound: 'assets/sounds/family_members/younger brohter.wav',
//       image: 'assets/images/family_members/family_younger_brother.png',
//       jpName: 'Otōto',
//       enName: 'younger brohter',
//     ),
//     ItemModel(
//       sound: 'sounds/family_members/younger sister.wav',
//       image: 'assets/images/family_members/family_younger_sister.png',
//       jpName: 'Imōto',
//       enName: 'younger sister',
//     ),
//     ItemModel(
//       sound: 'sounds/family_members/daughter.wav',
//       image: 'assets/images/family_members/family_daughter.png',
//       jpName: 'Musume',
//       enName: 'daughter',
//     ),
//   ];


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Family Members',
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Color(0xff46322B),
//         iconTheme: const IconThemeData(
//          color: Colors.white,  
//       ),
//       ),
//       body: ListView.builder(
//           itemCount: number.length,
//           itemBuilder: (context, index) {
//             return ListItem(
//               color: Color(0xff558B37),
//               item: number[index], sound: '',
//             );
//           },),
//     );
//   }


//   // List<Widget> getList(List<ItemModel> numbers) {
//   //   List<Widget> itemsList = [];
//   //   for (int i = 0; i < numbers.length; i++) {
//   //     itemsList.add(ListItem(number: numbers[i],color: Color(0xff558B37), sound: '',));
//   //   }
//   //   return itemsList;
//   // }
// }









import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import '../models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<ItemModel> familyMembers = const [
    ItemModel(
      sound: 'sounds/family_members/father.wav',
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichioya',
      enName: 'father',
    ),
    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'mother',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand father.wav',
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Sofu',
      enName: 'grand father',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand mother.wav',
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'grand mother',
    ),
    ItemModel(
      sound: 'sounds/family_members/older brother.wav',
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Ani',
      enName: 'older brother',
    ),
    ItemModel(
      sound: 'sounds/family_members/son.wav',
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'son',
    ),
    ItemModel(
      sound: 'sounds/family_members/older sister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'older sister',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger brother.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'younger brother',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'younger sister',
    ),
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'daughter',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Family Members',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322B),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return ListItem(
            color: const Color(0xff558B37),
            item: familyMembers[index],
          );
        },
      ),
    );
  }
}
