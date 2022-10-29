import 'package:bus_ticket_booking_app/Pages/seat.dart';
import 'package:flutter/material.dart';

class BusList extends StatefulWidget {
  static const String routeName ="busList";
  const BusList({Key? key}) : super(key: key);

  @override
  State<BusList> createState() => _BusListState();
}

class _BusListState extends State<BusList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Available Buses"),
        centerTitle: true,
        leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.arrow_back_ios)),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(42),
          child: Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(28, 0, 28, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("From",
                          style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                      )),
                      Text("Dhaka",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("To",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          )),
                      Text("Cox\'s Bazar",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),),
                    ],
                  )

                ],
              ),
            ),
          ),
        ),
        elevation: 15.0,
      ),

      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.builder(
          itemCount: 15,
            itemBuilder: (BuildContext context,i){
            return Buslistuilder();
            },


        ),
      ),
    );
  }

  Buslistuilder() {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>SeatPage()));
      },
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

                 Row(
                   children: [
                     ClipRRect(
                       borderRadius: BorderRadius.circular(100),
                       child: SizedBox(
                        height: 60,
                        width: 60,
            child: Image.asset("assets/app_icon.png",),
             )),
                     SizedBox(width: 15,),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Text("Sohag Travels",
                           style: TextStyle(
                             fontSize: 18,
                             fontWeight: FontWeight.w500,
                           ),
                         ),
                         SizedBox(height: 5,),
                         Text("Time : 07:00 Am",
                           style: TextStyle(
                             fontSize: 12,
                             fontWeight: FontWeight.w500,
                           ),
                         ),
                       ],
                     )
                   ],
                 ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Tk.950",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Total Seats: 30",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text("Available Seats: 18",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 8,),
                  Icon(
                    Icons.calendar_month_outlined,
                    size: 28,
                  )
                ],
              ),
        ],
      ),
          ),
      ),
    );
  }


}
