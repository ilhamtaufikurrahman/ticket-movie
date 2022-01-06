import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ListMoviePage extends StatelessWidget {
  const ListMoviePage({Key? key}) : super(key: key);

  static List<String> poster = [
    'https://images.hdqwalls.com/download/spiderman-no-way-home-movie-poster-5k-nr-1080x1920.jpg',
    'http://m.gettywallpapers.com/wp-content/uploads/2021/03/Spiderman-No-Way-Home-Wallpaper-scaled.jpg',
    'https://i2.wp.com/posterspy.com/wp-content/uploads/2021/02/SpiderMan_NoWayHome_Poster.jpg',
    'https://pbs.twimg.com/media/E34NVcwWUAUxkSm.jpg',
    'https://i.pinimg.com/736x/fd/34/e0/fd34e00fb2ddf90e3c6087531ef375df.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(28, 26, 41, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(47, 44, 68, 1),
          title: const Text('Daftar Film'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
        body: ListView.builder(
          itemCount: poster.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                height: 167,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        poster[index],
                        width: 117,
                        height: 167,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Star Wars: The Last',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        RatingBar.builder(
                          itemSize: 18,
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 2),
                          itemBuilder: (context, index) {
                            return const Icon(
                              Icons.star,
                              color: Colors.amber,
                            );
                          },
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        const Opacity(
                          opacity: 0.6,
                          child: Text(
                            '13+',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Opacity(
                          opacity: 0.6,
                          child: Text(
                            'Action, Sci-fi',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(134, 122, 210, 1),
                                Color.fromRGBO(108, 97, 175, 1),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          child: Material(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(5),
                              onTap: () {},
                              child: const Center(
                                child: Text(
                                  'Beli Tiket',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}
