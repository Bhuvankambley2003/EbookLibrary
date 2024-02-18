import 'package:flutter/material.dart';
import 'package:lithabit/widgets/reading_book.dart';

import 'book_cover_3d.dart';

class LastOpenedBook extends StatelessWidget {
  const LastOpenedBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Last Opened",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ReadingBook(
                          pdfPath: "assets/book0.pdf",
                        )),
              );
            },
            child: BookCover3D(
              imageUrl:
                  "https://m.media-amazon.com/images/I/51u8ZRDCVoL._SY445_SX342_.jpg",
            ),
          ),
        ),
      ],
    );
  }
}
