import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../features/home/presentation/widgets/custom_book_image.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: Skeletonizer(
          enabled: true,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CustomBookImage(
                  imageUrl: '',
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
