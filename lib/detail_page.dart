import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.poster}) : super(key: key);

  final String poster;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 26, 41, 1),
      body: SingleChildScrollView(
        child: Column(
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
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 8),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            return Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            size: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
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
                            child: Hero(
                              tag: poster,
                              child: Image.network(
                                poster,
                                height: 189,
                                width: 132,
                                fit: BoxFit.cover,
                              ),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                      Text(
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
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Sinopsis',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Opacity(
              opacity: 0.6,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Dalam film Lucasfilm Star Wars: The Last Jedi, kisah keluarga Skywalker diteruskan ketika para pahlawan The Force Awakens bergabung dengan para legenda galaksi dalam sebuah petualangan mencengangkan untuk menguak kunci misteri lintas zaman mengenai the Force serta terkuaknya secara mengejutkan berbagai rahasia masa lalu. Film ini dibintangi Mark Hamill, Carrie Fisher, Adam Driver, Daisy Ridley, John Boyega, Oscar Isaac, Lupita Nyong’o, Andy Serkis, Domhnall Gleeson, Anthony Daniels, Gwendoline Christie, Kelly Marie Tran, Laura Dern dan Benicio Del Toro. Star Wars: The Last Jedi ditulis & disutradarai oleh Rian Johnson dan diproduseri Kathleen Kennedy serta Ram Bergman. J.J. Abrams, Tom Karnowski dan Jason McGatlin sebagai produser eksekutif.',
                  style: TextStyle(
                    letterSpacing: 1.5,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 47,
        width: MediaQuery.of(context).size.width - 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
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
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {},
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/ticket-white.svg',
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Beli Tiket',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
