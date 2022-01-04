import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<String> list = [
    'https://static0.srcdn.com/wordpress/wp-content/uploads/2021/02/Spiderman-far-from-home-spiderman-no-way-home.jpg',
    'https://movies2all.com/wp-content/uploads/2021/05/Spider-Man-No-Way-Home-2048x1152.jpeg',
    'https://hype.my/wp-content/uploads/2021/02/EvAxxxGVgAEKSZl.jpeg',
  ];

  static final List<Widget> _widgetOption = <Widget>[
    SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            child: PageView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Image.network(
                  list[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Sedang Tayang',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: const [
                      Text(
                        'Lihat Semua',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color.fromRGBO(255, 255, 255, 0.6),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromRGBO(255, 255, 255, 0.6),
                        size: 8,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 260,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Container(
                    margin: const EdgeInsets.fromLTRB(16, 0, 8, 0),
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://i2.wp.com/posterspy.com/wp-content/uploads/2021/02/SpiderMan_NoWayHome_Poster.jpg',
                              fit: BoxFit.cover,
                              height: 210,
                              width: 150,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Star Wars: The Last',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          RatingBar.builder(
                            itemSize: 15,
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, index) {
                              return const Icon(
                                Icons.star,
                                color: Colors.amber,
                              );
                            },
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          )
                        ],
                      ),
                    ),
                  );
                }
                if (index == 2) {
                  return Container(
                    margin: const EdgeInsets.fromLTRB(8, 0, 16, 0),
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://i2.wp.com/posterspy.com/wp-content/uploads/2021/02/SpiderMan_NoWayHome_Poster.jpg',
                              fit: BoxFit.cover,
                              height: 210,
                              width: 150,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Star Wars: The Last',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          RatingBar.builder(
                            itemSize: 15,
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, index) {
                              return const Icon(
                                Icons.star,
                                color: Colors.amber,
                              );
                            },
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          )
                        ],
                      ),
                    ),
                  );
                } else {
                  return Container(
                    margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://i2.wp.com/posterspy.com/wp-content/uploads/2021/02/SpiderMan_NoWayHome_Poster.jpg',
                              fit: BoxFit.cover,
                              height: 210,
                              width: 150,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Star Wars: The Last',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          RatingBar.builder(
                            itemSize: 15,
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, index) {
                              return const Icon(
                                Icons.star,
                                color: Colors.amber,
                              );
                            },
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          )
                        ],
                      ),
                    ),
                  );
                }
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Voucher Deals',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Image.asset('assets/penawaran.png');
              },
            ),
          )
        ],
      ),
    ),
    const Text('Index 2: Timeline'),
    const Text('Index 2: Timeline'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 26, 41, 1),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
            child: SvgPicture.asset('assets/notification.svg'),
          ),
        ],
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              'assets/location.svg',
              width: 18,
            ),
            const SizedBox(
              width: 4,
            ),
            const Text(
              'Location',
              style: TextStyle(
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromRGBO(28, 26, 41, 1),
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.fromLTRB(16, 8, 0, 8),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i1.wp.com/infostarr.com/wp-content/uploads/2018/03/Joko-Widodo.jpg?fit=900%2C900&ssl=1'),
          ),
        ),
      ),
      body: _widgetOption.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/ticket.svg'),
            label: 'Ticket',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/perumahan.svg'),
            label: 'Perumahan',
          )
        ],
        selectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: const Color.fromRGBO(255, 255, 255, 0.3),
        onTap: _onItemTapped,
        elevation: 0,
        backgroundColor: const Color.fromRGBO(47, 44, 68, 1),
      ),
    );
  }
}
