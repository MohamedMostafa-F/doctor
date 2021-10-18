import 'package:flutter/material.dart';
import 'package:new_project/Screens/homepage.dart';
import 'package:new_project/theme/SharedTextStyleAndColor.dart';

class ContactDoctor extends StatefulWidget {
  const ContactDoctor({Key? key}) : super(key: key);

  @override
  _ContactDoctorState createState() => _ContactDoctorState();
}

class _ContactDoctorState extends State<ContactDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const HomePage();
                    }));
                  },
                  icon: const Icon(Icons.arrow_forward_outlined))
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height / 3,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://static.vecteezy.com/system/resources/thumbnails/002/204/187/small_2x/doctor-injecting-vaccine-to-a-patient-free-vector.jpg')),
                color: Colors.grey),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Call a doctor to visit you ',
                style: primaryTextStyle,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                child: const Center(
                  child: Text(
                    'Make An Appointement',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.red)),
          ]),
        ],
      ),
    );
  }
}
