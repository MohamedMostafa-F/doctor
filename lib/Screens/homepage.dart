import 'package:flutter/material.dart';
import 'package:new_project/demodata.dart';
import 'package:new_project/theme/SharedTextStyleAndColor.dart';
import 'package:new_project/widgets/contactDoctor.dart';
import 'package:new_project/widgets/topdoctorsearch.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Drawer(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListTile(
              title: Text(
                'Hellow,',
                style: secoundTextStyle,
              ),
              subtitle: Text(
                'Cybdom',
                style: primaryTextStyle,
              ),
              trailing: const CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(
                    'https://image.freepik.com/free-vector/doctor-background-design_1270-62.jpg'),
              )),
          const SizedBox(
            height: 5.0,
          ),
          Container(
            margin: const EdgeInsets.all(15.0),
            color: const Color(0xfff3f3f3),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'search',
                  helperStyle: secoundTextStyle,
                  prefixIcon: const Icon(Icons.search)),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Do You Have symptoms of Covid-19?',
                        style: primaryTextStyle,
                      ),
                    )
                  ]),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return const ContactDoctor();
                      }));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color(0xff40BEEE)),
                      child: const Center(
                          child: Text(
                        'Context A Doctor',
                        style:
                            TextStyle(color: Color(0xffE1F4FC), fontSize: 20),
                      )),
                    ),
                  )
                ],
              ),
              margin: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height / 3,
              decoration: const BoxDecoration(color: Color(0xffC5EBFA))),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: primaryTextStyle,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(15),
              color: Colors.transparent,
            ),
            height: 200,
            margin: const EdgeInsets.all(10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: category.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: 250,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(category[index]["image"]))),
                    ),
                    Text(category[index]['name']),
                    Text(category[index]['name']),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 230,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top Doctors',
                        style: primaryTextStyle,
                      ),
                      Text(
                        'See All',
                        style: primaryTextStyle,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 150,
                        width: 800,
                        decoration:
                            const BoxDecoration(color: Color(0xffFFFFFF)),
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                                image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV4GhmUoiTm634yvrsnoV8lbSB_Cr6OdVkrg&usqp=CAU')),
                              ),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text('Dr Cybdmen tech',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Icon(Icons.bookmark_border)
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text('General practitioner',
                                    style: secoundTextStyle),
                                Row(
                                  children: [
                                    for (int x = 0; x < 5; x++)
                                      const Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                    Text(
                                      '(12345)',
                                      style: primaryTextStyle,
                                    ),
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    Container(
                                      child: Center(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(builder: (_) {
                                              return const SearchDoctor();
                                            }));
                                          },
                                          child: const Text(
                                            'open',
                                            style: TextStyle(
                                                color: Color(0xff60C89B)),
                                          ),
                                        ),
                                      ),
                                      height: 50,
                                      width: 100,
                                      decoration: const BoxDecoration(
                                          color: Color(0xffDBF3E8)),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xffF3F3F3)),
          )
        ],
      ),
    );
  }
}
