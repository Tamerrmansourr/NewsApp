// import 'package:flutter/material.dart';
// import 'package:news_app_ui_setup/widgets/categories_list_view.dart';

// import '../widgets/news_list_view_builder.dart';

// class HomeView extends StatelessWidget {
//   const HomeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//         title: const Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text(
//               'News',
//               style: TextStyle(color: Colors.black),
//             ),
//             Text(
//               'Cloud',
//               style: TextStyle(color: Colors.orange),
//             ),
//           ],
//         ),
//       ),
//       body: const Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16),

//         child: CustomScrollView(
//           physics: BouncingScrollPhysics(),
//           slivers: [
//             SliverToBoxAdapter(child: CategoriesListView()),
//             SliverToBoxAdapter(
//               child: SizedBox(
//                 height: 32,
//               ),
//             ),
//             NewsListViewBuilder(
//               category: 'general',
//             ),
//           ],
//         ),
//         // child: Column(
//         //   children: [
//         //     CategoriesListView(),
//         //     SizedBox(
//         //       height: 32,
//         //     ),
//         //     Expanded(child: NewsListView()),
//         //   ],
//         // ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app_ui_setup/widgets/categories_list_view.dart';
import 'package:news_app_ui_setup/widgets/news_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                    text: 'News',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w500)),
                TextSpan(
                  text: 'Cloud',
                  style: TextStyle(
                      color: Color.fromARGB(255, 246, 171, 58),
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )),
      // body: ListView(children: const [
      //   CategoriesListView(),
      // ]),
      body: const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 12),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView(),),
            SliverToBoxAdapter(child: SizedBox(height: 35,),),
            NewsListView(),
          ],
        ),
      ),
    );
  }
}
