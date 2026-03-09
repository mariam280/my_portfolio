// import 'package:flutter/material.dart';

// class FeaturedNftCardItem extends StatelessWidget {
//   const FeaturedNftCardItem(
//       {super.key,
//       required this.height,
//       required this.featuredNftModel,
//       this.onTap,
//       required this.aspectRatio});
//   final double height;
//   final VoidCallback? onTap;
//   final FeaturedNftModel featuredNftModel;
//   final double aspectRatio;
//   @override
//   Widget build(BuildContext context) {
//     return CustomCard(
//       aspectRatio: aspectRatio,
//       //aspectRatio: 321 / 362,
//       child: Padding(
//         padding: const EdgeInsets.all(12),
//         child: Column(
//           spacing: 4,
//           mainAxisAlignment: MainAxisAlignment.start, // center
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             AspectRatio(
//               aspectRatio: height,
//               child: ClipRRect(
//                 borderRadius: BorderRadius.all(Radius.circular(12)),
//                 child: Image(
//                   image: AssetImage(featuredNftModel.image),
//                   fit: BoxFit.fill,
//                   //  height: height,
//                   //  width: double.infinity,
//                 ),
//               ),
//             ),
//             FittedBox(
//               fit: BoxFit.scaleDown,
//               child: Text(
//                 featuredNftModel.title,
//                 style: AppStyles.styleBold21(context),
//               ),
//             ),
//             Row(
//               children: [
//                 Image.asset(
//                   Assets.imagesProfiles,
//                   fit: BoxFit.contain,
//                 ),
//                 Flexible(
//                   child: Text(
//                     // ' @${featuredNftModel.creator1}',
//                     ' @${featuredNftModel.creator1} , @${featuredNftModel.creator2}',
//                     style: AppStyles.styleRegular12(context),
//                   ),
//                 ),
//               ],
//             ),
//             Divider(
//               indent: 3,
//               endIndent: 3,
//               color: ColorsManager.nuteralColor3,
//             ),
//             Text(
//               'Current Bid :',
//               style: AppStyles.styleRegular12(context)
//                   .copyWith(color: ColorsManager.nuteralColor2),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Image.asset(
//                   Assets.imagesCurrencyEthereum,
//                   fit: BoxFit.contain,
//                 ),
//                 Text('  ${featuredNftModel.currentBid}',
//                     style: AppStyles.styleRegular12(context)),
//                 // Spacer(),
//                 Expanded(
//                   child: CustomButon(
//                     text: 'Place a Bid',
//                     buttonColor: ColorsManager.purpleColor1,
//                     textColor: ColorsManager.kWhite,
//                     onTap: onTap,
//                     margin: EdgeInsets.symmetric(horizontal: 10),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
