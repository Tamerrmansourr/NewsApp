// import 'package:flutter/material.dart';
// import 'package:news_app_ui_setup/models/article_model.dart';

// // cached network image
// class NewsTile extends StatelessWidget {
//   const NewsTile({super.key});

//   //final ArticleModel articleModel;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 8.0, right: 8, top: 20),
//           child: ClipRRect(
//               borderRadius: BorderRadius.circular(6),
//               child: Image.network(
//                 //articleModel.image!,
//                 'https://picsum.photos/250?image=9',
//                 height: 200,
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               )),
//         ),
//         const SizedBox(
//           height: 12,
//         ),
//         const Text(
//           //articleModel.title,
//           'by Louise Twilley | Aug 31, 2024 | News, Whats on by Louise Twilley | Aug 31, 2024 | News, Whats on by Louise Twilley | Aug 31, 2024 | News, Whats on by Louise Twilley | Aug 31, 2024 | News, Whats on',
//           maxLines: 2,
//           overflow: TextOverflow.ellipsis,
//           style: TextStyle(
//             color: Colors.black87,
//             fontSize: 20,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         const SizedBox(
//           height: 8,
//         ),
//         const Text(
//           //articleModel.subTitle ?? '',
//           'Latest news Septembers News Sheet Whats happening in August Simons July Blog Messy Church Summer Special 10th August 3-5pm',
//           maxLines: 2,
//           style: const TextStyle(color: Colors.grey, fontSize: 14),
//         )
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            articleModel.image?? 'assets/unhappy-dead-face-icon-png.webp',
             width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          articleModel.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          articleModel.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(fontSize: 14,color: Color.fromARGB(255, 142, 142, 142)),
          ),
      ],
    );
  }
}
