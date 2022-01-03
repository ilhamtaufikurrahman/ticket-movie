import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Color> list = [Colors.red, Colors.blue, Colors.green];

  static final List<Widget> _widgetOption = <Widget>[
    Column(
      children: [
        SizedBox(
          height: 300,
          child: PageView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Container(
                color: list[index],
              );
            },
          ),
        ),
        const SizedBox(
          height: 16,
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
        Expanded(
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
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
                        itemPadding: const EdgeInsets.symmetric(horizontal: 4),
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
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
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
                        itemPadding: const EdgeInsets.symmetric(horizontal: 4),
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
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
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
                        itemPadding: const EdgeInsets.symmetric(horizontal: 4),
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
              ),
            ],
          ),
        )
      ],
    ),
    const Text('Index 1: Profile'),
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
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          )
        ],
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.location_on_outlined),
            SizedBox(
              width: 4,
            ),
            Text('Location'),
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.android),
            label: 'Android',
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
