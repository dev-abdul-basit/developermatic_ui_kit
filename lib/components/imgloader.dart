// import 'package:flutter/material.dart';

// class ImgLoader extends StatelessWidget {
//   const ImgLoader({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(4),
//       child: CachedNetworkImage(
//         imageUrl: ApiConstants.imgBaseUrl + imgPath,
//         width: 40,
//         height: 40,
//         fit: BoxFit.cover,
//         placeholder: (context, url) =>
//             const Center(child: CircularProgressIndicator()),
//         errorWidget: (context, url, error) => const Icon(Icons.error),
//       ),
//     );
//   }
// }
