import 'package:flutter/material.dart';
import 'package:parcel_app_ui/widget/home_button_bar.dart';
import 'package:parcel_app_ui/widget/item_widget.dart';

class HomeScreen extends StatefulWidget {
  

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabctrl;
  @override
  void initState() {
    _tabctrl = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabctrl.addListener(_handleTabsSelection);
    super.initState();
  }

  _handleTabsSelection() {
    if (_tabctrl.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: ListView(
            children: [
              Padding(
                padding:const  EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "It's a Great Day for a Coffee",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin:const  EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                width: MediaQuery.of(context).size.width,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 50, 54, 56),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Find your coffee",
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.5)),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white.withOpacity(0.5),
                      )),
                ),
              ),
              TabBar(
                  controller: _tabctrl,
                  labelColor: const Color(0xffE57734),
                  unselectedLabelColor: Colors.white.withOpacity(0.5),
                  isScrollable: true,
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 3,
                      color: Color(0xffE57734),
                    ),
                    insets: EdgeInsets.symmetric(horizontal: 16),
                  ),
                  labelStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                  labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                  tabs: const [
                    Tab(
                      text: "Hot Coffee",
                    ),
                    Tab(
                      text: "Cold Coffee",
                    ),
                    Tab(
                      text: "Cappuiccino",
                    ),
                    Tab(
                      text: "Americano",
                    ),
                  ]),
             const  SizedBox(
                height: 10,
              ),
              Center(
                child: [ItemWidget(),
                ItemWidget(),
                ItemWidget(),
                ItemWidget(),
                ][_tabctrl.index],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar:const  HomeButtonBar(),
    );
  }
}
