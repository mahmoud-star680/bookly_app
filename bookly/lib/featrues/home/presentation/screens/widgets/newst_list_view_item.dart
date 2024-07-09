import 'package:flutter/material.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/featrues/home/data/Models/BookModel/book_model.dart';
import 'package:bookly/featrues/home/presentation/screens/widgets/book_rating.dart';


class NewestListViewItem extends StatelessWidget {
  final BookModel book;

  const NewestListViewItem({required this.book, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 120,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.cyan,
                image: book.volumeInfo?.imageLinks?.thumbnail != null
                    ? DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(book.volumeInfo!.imageLinks!.thumbnail!),
                      )
                    : null,
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                book.volumeInfo?.title ?? 'No Title',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
              ),
              const SizedBox(height: 3),
              Text(
                book.volumeInfo?.authors?.join(', ') ?? 'Unknown Author',
                style: Styles.textStyle14,
              ),
              const SizedBox(height: 3),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '\$${book.saleInfo?.saleability ?? "N/A"}',
                      style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const BookRating(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}