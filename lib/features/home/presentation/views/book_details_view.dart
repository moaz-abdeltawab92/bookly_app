import 'package:flutter/material.dart';

import '../widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //safeArea make sure that the content is not cut off from StatusBar
      body: SafeArea(child: BookDetailsViewBody()),
    );
  }
}
