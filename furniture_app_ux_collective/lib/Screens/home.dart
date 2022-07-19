import "package:flutter/material.dart";
import 'package:furniture_app_ux_collective/util/widgets.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.chevron_left),

              Container(
                height:32,
                width: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.blue
                ),
              )
            ],
          ),

          SizedBox(height: 32,),

          Text("Discover\nour new items", style: TextStyle(
            fontSize: 32, 
          ),),

          const SizedBox(height: 24,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: EdgeInsets.fromLTRB(24, 12, 0, 12),
                width: MediaQuery.of(context).size.width - 90,
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: "Search products"
                  ),
                ),
              ),
              // SizedBox(width: 8,),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(4),
                  ),
                child: Icon(Icons.menu, color: Colors.white, size: 8,)
              )
            ],
          ),

          const SizedBox(height: 24,),

          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 42,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(width: 12,),
              itemBuilder: (context, index) => TabSelection(label: 'label'),
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              ),
          ),

          SizedBox(
            height: 24,
          ),

          ProductWidget()
        ],
      ),
    );
  }
}