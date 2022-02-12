import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({
    Key? key,
    required this.imageUrl,
    this.imageTitle,
  }) : super(key: key);

  final String imageUrl;
  final String? imageTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
              image: NetworkImage(imageUrl),
              placeholder: const AssetImage('assets/jar-loading.gif'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300)),
          if (imageTitle != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              // child: Text(imageTitle ?? 'No Title'),
              child: Text(imageTitle!),
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            )
        ],
      ),
    );
  }
}
