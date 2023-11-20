import 'package:flutter/material.dart';
class tips extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height*0.1,
            color: Colors.grey,
          ),
          SizedBox(height: 0.15,),
          Container(

            height: height*0.1,
            color: Colors.red,
          ),

        ],
      )
    );
  }
}



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


