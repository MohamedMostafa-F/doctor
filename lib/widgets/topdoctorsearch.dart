import 'package:flutter/material.dart';
import 'package:new_project/Screens/homepage.dart';
import 'package:new_project/theme/SharedTextStyleAndColor.dart';

class SearchDoctor extends StatefulWidget {
  const SearchDoctor({Key? key}) : super(key: key);

  @override
  _SearchDoctorState createState() => _SearchDoctorState();
}

class _SearchDoctorState extends State<SearchDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(scrollDirection: Axis.vertical, children: [
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const HomePage();
                }));
              },
              icon: const Icon(Icons.assignment_return_rounded),
            ),
          ],
        ),
        height: 200,
        decoration: const BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
                fit: BoxFit.contain,
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV4GhmUoiTm634yvrsnoV8lbSB_Cr6OdVkrg&usqp=CAU'))),
      ),
      ListTile(
        title: Text(
          'Dr Cybdon tech',
          style: primaryTextStyle,
        ),
        subtitle: Text(
          'General practitioner',
          style: secoundTextStyle,
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.email),
        ),
      ),
      const SizedBox(
        height: 10.0,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            for (int x = 0; x < 5; x++)
              const Icon(
                Icons.star,
                color: Colors.yellow,
              ),
            Text(
              '1320 Reviews',
              style: primaryTextStyle,
            ),
            const SizedBox(
              width: 500,
            ),
            Text(
              'See All reviews',
              style: primaryMainTextStyle,
            )
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('About\n Incident placeat eos megni  quam in digni',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          'See More',
          style: primaryMainTextStyle,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Working Hours',
          style: primaryTextStyle,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Mon - Fri-09:00-17:00', style: primaryTextStyle),
            Container(
              child: const Center(
                child: Text(
                  'open',
                  style: TextStyle(color: Color(0xff60C89B)),
                ),
              ),
              height: 50,
              width: 100,
              decoration: const BoxDecoration(color: Color(0xffDBF3E8)),
            )
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Stats',
          style: primaryTextStyle,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: const [
            SizedBox(
              width: 20,
            ),
            Text('385\n patients'),
            SizedBox(
              width: 300,
            ),
            Text('15 Years Experience '),
            SizedBox(
              width: 400,
            ),
            Text('10 Certifications '),
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
            child: const Center(
              child: Text(
                'Make An Appointement',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.red)),
      )
    ]));
  }
}
