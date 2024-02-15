import 'package:e_book_application/themes.dart';
import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  static const nameRoute = '/bookDetails';
  const BookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context)?.settings.arguments
        as Map; // inisialisasi menyamakan data yang ingin di click user

    Widget header() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        margin: EdgeInsets.only(top: 30, bottom: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.chevron_left_rounded,
                size: 30,
              ),
            ),
            Text(
              'Book Details',
              style: semiBoldText14.copyWith(color: blackColor),
            ),
            Icon(Icons.share_outlined)
          ],
        ),
      );
    }

    Widget bookImage() {
      return Hero(
        tag: data['imageUrl'],
        child: Container(
          height: 267,
          width: 175,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(data['imageUrl']),
              fit: BoxFit.fill,
            ),
          ),
        ),
      );
    }

    Widget infoDescription() {
      return Container(
        height: 60,
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        decoration: BoxDecoration(
          color: greyColorInfo,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Rating',
                  style: mediumText10.copyWith(color: dividerColor),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '4.8',
                  style: semiBoldText12.copyWith(color: blackColor2),
                ),
              ],
            ),
            VerticalDivider(
              color: dividerColor,
              thickness: 1,
            ),
            Column(
              children: [
                Text(
                  'Number of pages',
                  style: mediumText10.copyWith(color: dividerColor),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '180 Page',
                  style: semiBoldText12.copyWith(color: blackColor2),
                ),
              ],
            ),
            VerticalDivider(
              color: dividerColor,
              thickness: 1,
            ),
            Column(
              children: [
                Text(
                  'Language',
                  style: mediumText10.copyWith(color: dividerColor),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'ENG',
                  style: semiBoldText12.copyWith(color: blackColor2),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget buttonReadNow() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        height: 50,
        width: double.infinity,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: greenColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          child: Text(
            'Read Now',
            style: semiBoldText20.copyWith(color: whiteColor),
          ),
        ),
      );
    }

    Widget description() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['title'],
                        style: semiBoldText20.copyWith(color: blackColor2),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        data['writers'],
                        style: mediumText14.copyWith(color: greyColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Free Access',
                  style: mediumText14.copyWith(color: greenColor),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Description',
              style: semiBoldText14.copyWith(color: blackColor2),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Enchantment, as defined by bestselling business guru Guy Kawasaki, is not about manipulating people. It transforms situations and relationships.',
              style: regularText12.copyWith(color: greyColor),
            ),
            infoDescription(),
            buttonReadNow(),
          ],
        ),
      );
    }

    Widget saveButton() {
      return Positioned(
        top: 400,
        right: 30,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          height: 50,
          width: 50,
          decoration: BoxDecoration(color: greenColor, shape: BoxShape.circle),
          child: Image.asset('assets/icons/icon-save.png'),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  header(),
                  bookImage(),
                  description(),
                ],
              ),
              saveButton(),
            ],
          ),
        ],
      ),
    );
  }
}
