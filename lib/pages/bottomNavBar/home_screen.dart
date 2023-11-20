import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body:
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: height*0.03),
                  decoration: BoxDecoration(
                  ),
                  height: height*0.05,
                  width: width*0.7,
                  child: TabBar(
                    unselectedLabelColor: Colors.black,
                      labelColor: Colors.black,
                      tabs: [
                        Tab(child: Text('Products'),),
                        Tab(child: Text('Manufacturers'),),
                      ]),
                ),
              ),
              Container(
                height: height * 0.07,
                padding: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                      height: height * 0.05,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(width: 1)),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            height: 50,
                            width: 260,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search here..'),
                            ),
                          ),

                          Icon(
                            Icons.camera_alt,
                          ),
                          SizedBox(width: width*0.03,),
                          Icon(
                            Icons.search_sharp,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                     height: height*0.782,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                              child: Text(
                                  'You are protected when you source on Alibaba.com >')),
                          Container(
                            margin:
                            EdgeInsets.only(left: width * 0.03, top: height * 0.05),
                            child: Text(
                              'Welcome!',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            height: 75,
                            width: double.infinity,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                _allCategories(),
                                _membership(),
                                _quatation(),
                                _logistics(),
                                _shipping()
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 60,
                            width: width * 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'Top Ranking',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Icon(Icons.arrow_forward),
                              ],
                            ),
                          ),
                          Container(
                            height: height * 0.3,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                _item1(),
                                _item2(),
                                _item1(),
                                _item2(),
                                _item1(),
                                _item2(),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            padding: EdgeInsets.only(left: 10),
                            height: 60,
                            width: width * 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'New Arrivals',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('63,300+ products added today'),
                                        ),
                                      ],
                                    ),
                                  ),
                                Icon(Icons.arrow_forward),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            height: height * 0.3,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                _item1(),
                                _item2(),
                                _item1(),
                                _item2(),
                                _item1(),
                                _item2(),
                                _item2(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ),
            ],
          ),
      ),
    );
  }
}
//color: Color(0xFFEDECF2), offwhite

//Welcome Categories Elements
Widget _allCategories() {
  return Container(
    margin: EdgeInsets.only(top: 10, left: 5, right: 5),
    width: 150,
    decoration: BoxDecoration(
        color: Colors.orange.shade700, borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Text(
            'All categories',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          child: Image.asset('assets/icons/categories.png'),
        )
      ],
    ),
  );
}

Widget _membership() {
  return Container(
    margin: EdgeInsets.only(top: 10, left: 5, right: 5),
    width: 150,
    decoration: BoxDecoration(
        color: Colors.blueAccent, borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Text(
            'Alibaba.com\nMembership',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          width: 30,
          child: Image.asset('assets/icons/membership.png'),
        )
      ],
    ),
  );
}

Widget _quatation() {
  return Container(
    margin: EdgeInsets.only(top: 10, left: 5, right: 5),
    width: 150,
    decoration: BoxDecoration(
        color: Colors.blue.shade900, borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Text(
            'Request for\nQuatation',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          width: 30,
          child: Image.asset('assets/icons/icons8-quotation-80.png'),
        )
      ],
    ),
  );
}

Widget _logistics() {
  return Container(
    margin: EdgeInsets.only(top: 10, left: 5, right: 5),
    width: 150,
    decoration: BoxDecoration(
        color: Colors.green.shade900, borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Text(
            'Logistics\nservice',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          width: 30,
          child: Image.asset('assets/icons/ship2.png'),
        )
      ],
    ),
  );
}

Widget _shipping() {
  return Container(
    margin: EdgeInsets.only(top: 10, left: 5, right: 5),
    width: 150,
    decoration: BoxDecoration(
        color: Colors.green.shade900, borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Text(
            'Ready to Ship',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          width: 30,
          child: Image.asset('assets/icons/shipping.png'),
        )
      ],
    ),
  );
}

//Top Ranking Elements
Widget _item1() {
  return Container(
    margin: EdgeInsets.only(top: 5, left: 5, right: 5),
    width: 150,
    decoration: BoxDecoration(
        color: Colors.black12, borderRadius: BorderRadius.circular(10)),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(15),
          child: Text(
            'Most Popular',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage('assets/img/powerbank.webp'))),
          // child: Image.asset('assets/img/powerbank.webp', fit: BoxFit.cover,),
        ),
        Container(
          margin: EdgeInsets.all(15),
          child: Text(
            'Power Bank',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ],
    ),
  );
}
Widget _item2() {
  return Container(
    margin: EdgeInsets.only(top: 5, left: 5, right: 5),
    width: 150,
    decoration: BoxDecoration(
        color: Colors.black12, borderRadius: BorderRadius.circular(10)),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(15),
          child: Text(
            'Hot selling',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage('assets/img/powerbank2.webp'))),
          // child: Image.asset('assets/img/powerbank.webp', fit: BoxFit.cover,),
        ),
        Container(
          margin: EdgeInsets.all(15),
          child: Text(
            'Power Bank',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ],
    ),
  );
}



