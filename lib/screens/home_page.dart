// // import 'package:flutter/material.dart';
// // import 'package:toku_project/components/category_item.dart';

// // class HomePage extends StatelessWidget {
// //   const HomePage({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Color(0xffFEF6DB),
// //       appBar: AppBar(
// //         backgroundColor: Color(0xff46322B),
// //         title: Text(
// //           'Toku',
// //           style: TextStyle(
// //             color: Colors.white,
// //           ),
// //         ),
// //       ),
// //       body: Column(
// //         children: [
// //          Category(
// //            onTap: () {},
// //            text:'Numbers',
// //            color: Color(0xffEF9235),
// //            ),
// //           Category(
// //             onTap: (){} ,
// //             text: 'FamilyMember',
// //             color: Color(0xff558B37),
// //           ),
// //           Category(
// //             onTap: (){} ,
// //             text: 'Colors',
// //             color: Color(0xff79359F),
// //           ),
// //           Category(
// //             onTap: (){} ,
// //             text: 'Phrases',
// //             color: Color(0xff50ADC7),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:toku_app/models/number.dart';
// import 'package:toku_app/screens/colors_page.dart';
// import 'package:toku_app/screens/family_memebers.dart';
// import 'package:toku_app/screens/phrases_page.dart';
// import '../components/category_item.dart';
// import 'numbers_page.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffFEF6DB),
//       appBar: AppBar(
//         backgroundColor: Color(0xff46322B),
//         title: Text(
//           'Toku',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           Category(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (BuildContext context) {
//                 return NumbersPage();
                
//               }));
              
//             },
//             text: 'Numbers',
//             color: Color(0xffEF9235),
//           ),
//           Category(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (BuildContext context) {
//                 return FamilyMemebersPage();
                
//               }));
              
//             },
//             text: 'Family Members',
//             color: Color(0xff558B37),
//           ),
//            Category(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (BuildContext context) {
//                 return ColorsPage();
                
//               }));
              
//             },
//             text: 'Colors',
//             color: Color(0xff79359F),
//           ),
//          Category(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (BuildContext context) {
//                 return PhrasesPage();
                
//               }));
              
//             },
//             text: 'Phrases',
//             color: Color(0xff50ADC7),
//           ),
//         ],
//       ),
//     );
//   }
// }








import 'package:flutter/material.dart';
import 'package:toku_app/models/number.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/family_memebers.dart';
import 'package:toku_app/screens/phrases_page.dart';
import '../components/category_item.dart';
import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const NumbersPage();
              }));
            },
            text: 'Numbers',
            color: const Color(0xffEF9235),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const FamilyMembersPage();
              }));
            },
            text: 'Family Members',
            color: const Color(0xff558B37),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const ColorsPage();
              }));
            },
            text: 'Colors',
            color: const Color(0xff79359F),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: const Color(0xff50ADC7),
          ),
        ],
      ),
    );
  }
}
