import 'package:flutter/material.dart';

class MostUseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.red, width: 1)),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/society.png',
                width: 100.0,
                height: 100,
              ),
              SizedBox(
                width: 40.0,
              ),
              Container(
                width: 150.0,
                child: Text(
                  'طلب الحصول على برامج تكافل',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25.0,
                  ),
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.clip,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Text(
            'الحصول على دعم اجتماعي',
            style: TextStyle(color: Colors.red, fontSize: 24.0),
          ),
        ],
      ),
    );
  }
}
