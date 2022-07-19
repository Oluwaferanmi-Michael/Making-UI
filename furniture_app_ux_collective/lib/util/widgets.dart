import "package:flutter/material.dart";


class CustBNB extends StatefulWidget {

  List<BottomNavigationBarItem>? items;
  List<Widget>? pages;

  CustBNB({
    this.items,
    this.pages,
    Key? key}) : super(key: key);

  @override
  State<CustBNB> createState() => _CustBNBState();
}

class _CustBNBState extends State<CustBNB> {
  Color? backgroundColor;

    int pageIndex = 0;

    void onSelect(int index){
      setState(() {
        pageIndex = index;  
      });
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            // color: Colors.black,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: widget.pages![pageIndex]
          ),

          Positioned(
            bottom: 24,
            child: Container(
              padding: const EdgeInsets.only(top: 12),
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(18),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 48,
                child: BottomNavigationBar(
                        type: BottomNavigationBarType.fixed,
                        backgroundColor: Colors.black,
                        items: widget.items!,
                        currentIndex: pageIndex,
                        onTap: onSelect,
                        iconSize: 24)
                
              ),
            )
          )
        ]
      ),
    );
  }
}



class TabSelection extends StatefulWidget {
  String label;
  
  TabSelection({
    required this.label,
    Key? key}) : super(key: key);

  @override
  State<TabSelection> createState() => _TabSelectionState();
}

class _TabSelectionState extends State<TabSelection> {

  bool vis = true; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          vis = !vis;
        });
      },
      child: Column(
        children: [
          Visibility(
            visible: vis,
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            child: Container(
              width: 5,
              height: 5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red[900],
              ),
            ),
          ),

          Text(widget.label, style: TextStyle(
            fontSize: 16,
            fontWeight: vis == true ? FontWeight.bold: FontWeight.normal

          ), ),
          
        ],
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width - 72,
      width: MediaQuery.of(context).size.width / 2,
      child: Container(
        margin: EdgeInsets.only(top: 72),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
          Positioned(
            // top: 30,
            child: Container(
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent[100],
                  borderRadius: BorderRadius.circular(12)
                ),
              ),
            
          ),

          Positioned(
            top: -100,
            child: SizedBox(
              child: Image.asset('assets/images/chair1.png',width: 200,))),


          // Product Data
          Positioned(
            bottom: 18,
            right: 18,
            left: 18,
            // height: 100,
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('data'),
                        Text('subdata'),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$price"),

                      SizedBox(
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.grey[350]
                              ),
                              height: 24,
                              width: 24,
                              child: Icon(Icons.favorite_outlined, size: 8,),
                              ),

                              const SizedBox(width: 4,),
                              
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.grey[350],
                              radius: 12,
                              child: Icon(
                                Icons.add,
                                size: 8,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ))
          ]
        ),
      ),
    );
  }
}
