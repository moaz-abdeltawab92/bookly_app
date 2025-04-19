import 'package:bookly_app/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWK9xi0Q5Ro6UezZjm6L9HhO8PNivf-Bo18ce0DpwrpKdOX-D7f2fVTyyZ6i3Vm94sKE8&usqp=CAU",
              ),
            );
          }),
    );
  }
}
