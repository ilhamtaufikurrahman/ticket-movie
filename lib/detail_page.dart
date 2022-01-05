import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 26, 41, 1),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            child: Stack(
              children: [
                Image.network(
                  'https://static0.srcdn.com/wordpress/wp-content/uploads/2021/02/Spiderman-far-from-home-spiderman-no-way-home.jpg',
                  fit: BoxFit.cover,
                  height: 213,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  height: 213,
                  color: const Color.fromRGBO(28, 26, 41, 0.69),
                ),
                Positioned(
                  top: 190,
                  child: Container(
                    height: 200,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://i2.wp.com/posterspy.com/wp-content/uploads/2021/02/SpiderMan_NoWayHome_Poster.jpg',
                            height: 189,
                            width: 132,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 35,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width -
                                  20 -
                                  16 -
                                  20 -
                                  132,
                              child: const Text(
                                'Spiderman: No Way Home',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Opacity(
                                      opacity: 0.25,
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          right: 16,
                                          bottom: 8,
                                        ),
                                        child: const Text(
                                          'Director',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.25,
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          right: 16,
                                          bottom: 8,
                                        ),
                                        child: const Text(
                                          'Writer',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.25,
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          right: 16,
                                          bottom: 8,
                                        ),
                                        child: const Text(
                                          'Genre',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.25,
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          right: 16,
                                          bottom: 8,
                                        ),
                                        child: const Text(
                                          'PH',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Opacity(
                                      opacity: 0.6,
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          right: 16,
                                          bottom: 8,
                                        ),
                                        child: const Text(
                                          'Director',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.6,
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          right: 16,
                                          bottom: 8,
                                        ),
                                        child: const Text(
                                          'Writer',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.6,
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          right: 16,
                                          bottom: 8,
                                        ),
                                        child: const Text(
                                          'Genre',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.6,
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          right: 16,
                                          bottom: 8,
                                        ),
                                        child: const Text(
                                          'PH',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromRGBO(255, 255, 255, 0.15),
                    width: 1,
                  ),
                  color: const Color.fromRGBO(28, 26, 41, 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RatingBar.builder(
                      itemSize: 13,
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1),
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
                    const Text(
                      '8.8/10',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromRGBO(255, 255, 255, 0.15),
                    width: 1,
                  ),
                  color: const Color.fromRGBO(28, 26, 41, 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'Duration',
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(255, 255, 255, 0.5)),
                    ),
                    Text(
                      '152 Min',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromRGBO(255, 255, 255, 0.15),
                    width: 1,
                  ),
                  color: const Color.fromRGBO(28, 26, 41, 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'P-G',
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(255, 255, 255, 0.5)),
                    ),
                    const Text(
                      '13+',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
