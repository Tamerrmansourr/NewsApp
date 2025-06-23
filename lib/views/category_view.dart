// import 'package:flutter/material.dart';
// import 'package:news_app_ui_setup/widgets/news_list_view_builder.dart';

// class CategoryView extends StatelessWidget {
//   const CategoryView({super.key, required this.category});

//   final String category;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           NewsListViewBuilder(
//             category: category,
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 12),
        width: 180,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(categoryModel.image)),
        ),
        child: Center(
          child: Text(
          categoryModel.categoryName,
          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        )));
  }
}
