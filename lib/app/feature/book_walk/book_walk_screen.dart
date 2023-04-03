import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:walk_dog_app/app/feature/book_walk/book_walk_interactor.dart';
import 'package:walk_dog_app/app/feature/book_walk/book_walk_ui.dart';

@RoutePage(name: "BookWalkScreen")
class BookWalkScreen extends StatefulWidget {
  const BookWalkScreen({super.key});

  @override
  State<BookWalkScreen> createState() => _BookWalkScreenState();
}

class _BookWalkScreenState extends State<BookWalkScreen> implements BookWalkInteractor {
  @override
  Widget build(BuildContext context) {
    return BookWalkUI(interactor: this);
  }
}