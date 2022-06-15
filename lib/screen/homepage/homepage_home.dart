import 'package:flutter/material.dart';

class HomepageHome extends StatefulWidget {
  const HomepageHome({Key? key}) : super(key: key);

  @override
  State<HomepageHome> createState() => _HomepageHomeState();
}

class _HomepageHomeState extends State<HomepageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/images/Logo.png',
          height: 50.0,
        ),
        backgroundColor: const Color.fromARGB(255, 237, 5, 5),
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Halo, {nama}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            ButtonWidget(
                text: 'Join Membership',
                onClicked: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MembershipScreen()));
                }),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 237, 5, 5),
                border: Border.all(
                  color: const Color.fromARGB(255, 237, 5, 5),
                  width: 5,
                ),
              ),
              child: Column(
                children: const [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Membership GymBud',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Exp 27/07/22',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'ID 97892321',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Kelas yang tersedia',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 170,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/banner_kelas.jpg',
                              fit: BoxFit.fill),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 7.0, vertical: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Cardio',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Text(
                                  '22/07/22',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: const Text(
                              'BodyCombat',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Icon(
                                  Icons.access_time,
                                  color: Colors.black,
                                  size: 19.0,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  '00:00',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: const Text(
                              'Rp. 999.999.999',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ]),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 170,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/banner_kelas.jpg',
                              fit: BoxFit.fill),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 7.0, vertical: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Cardio',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Text(
                                  '22/07/22',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: const Text(
                              'BodyCombat',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Icon(
                                  Icons.access_time,
                                  color: Colors.black,
                                  size: 19.0,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  '00:00',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: const Text(
                              'Rp. 999.999.999',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ]),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 170,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/banner_kelas.jpg',
                              fit: BoxFit.fill),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 7.0, vertical: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Cardio',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Text(
                                  '22/07/22',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: const Text(
                              'BodyCombat',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Icon(
                                  Icons.access_time,
                                  color: Colors.black,
                                  size: 19.0,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  '00:00',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: const Text(
                              'Rp. 999.999.999',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ]),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Newsletter',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 200,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/banner_newsletter.jpeg',
                              fit: BoxFit.fill),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  '4 June 2022',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Tips jaga makan saat melakukan diet',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 200,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/banner_newsletter.jpeg',
                              fit: BoxFit.fill),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  '4 June 2022',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Tips jaga makan saat melakukan diet',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 200,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/banner_newsletter.jpeg',
                              fit: BoxFit.fill),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  '4 June 2022',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Tips jaga makan saat melakukan diet',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
