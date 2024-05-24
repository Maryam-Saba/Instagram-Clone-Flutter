import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    List<String> stories = [
      'Story 1',
      'Story 2',
      'Story 3',
      'Story 4',
      'Story 5',
      'Story 6'
    ];
    List<String> posts = ['Post 1', 'Post 2', 'Post 3'];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Instagram"),
          actions: const [
            Icon(Icons.add),
            Icon(Icons.favorite),
            Icon(Icons.message),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: stories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Container(
                    
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                        child: Center(child: Text(stories[index])),
                  );
                }),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: posts.length,
                scrollDirection: Axis.vertical,
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                     const ListTile(
                        contentPadding:  EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        leading:  CircleAvatar(
                          radius: 25,
                        ),
                        title:  Text('HueHue'),
                        textColor: Colors.white,
                        trailing:
                             Icon(Icons.more_vert, color: Colors.white),
                      ),
                      Container(
                        child:  Center(child: Text('Post content')),
                        height: 400,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.favorite_border),
                                color: Colors.white,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.mode_comment_outlined),
                                color: Colors.white,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.send),
                                color: Colors.white,
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.bookmark_border),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    const  Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Text(
                              'Liked by ',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'username',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              ' and ',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'others',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,

          unselectedItemColor: Colors.white,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
