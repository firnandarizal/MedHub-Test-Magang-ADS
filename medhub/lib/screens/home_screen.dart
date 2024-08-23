// home_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/homepage_components/brand_item.dart';
import '../components/homepage_components/category_item.dart';
import '../components/homepage_components/deal_item.dart';
import '../models/homepage_models/brand.dart';
import '../models/homepage_models/category.dart';
import '../models/homepage_models/deal.dart';
import 'category_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      Category(
          title: 'Dental',
          icon: Icons.medical_services_outlined,
          gradientColors: [const Color(0xFFFF9598), const Color(0xFFFF70A7)]),
      Category(
          title: 'Wellness',
          icon: Icons.spa_outlined,
          gradientColors: [const Color(0xFF19E5A5), const Color(0xFF15BD92)]),
      Category(
          title: 'Homeo',
          icon: Icons.home_outlined,
          gradientColors: [const Color(0xFFFFC06F), const Color(0xFFFF793A)]),
      Category(
          title: 'Eye care',
          icon: Icons.visibility_outlined,
          gradientColors: [const Color(0xFF4DB7FF), const Color(0xFF3E7DFF)]),
      Category(
          title: 'Skin & Hair',
          icon: Icons.face_outlined,
          gradientColors: [const Color(0xFF828282), const Color(0xFF090F47)]),
    ];

    final deals = [
      Deal(
          title: 'Accu-check Active Test Strip',
          price: 'Rp 112.000',
          rating: 4.2,
          imagePath: 'assets/images/p1.png'),
      Deal(
          title: 'Omron HEM-8712 BP Monitor',
          price: 'Rp 150.000',
          rating: 4.5,
          imagePath: 'assets/images/p2.png'),
    ];

    final brands = [
      Brand(name: 'Himalaya Wellness', imagePath: 'assets/images/h1.png'),
      Brand(name: 'Accu-Chek', imagePath: 'assets/images/a1.png'),
      Brand(name: 'VLCC', imagePath: 'assets/images/v1.png'),
      Brand(name: 'Protinex', imagePath: 'assets/images/p3.png'),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 230.0,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF1B75BC), Color(0xFF00AAF5)],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0),
                    ),
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppBar(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            leading: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/images/profile_picture.png'),
                              ),
                            ),
                            actions: [
                              IconButton(
                                icon: const Icon(Icons.notifications_outlined),
                                color: Colors.white,
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: const Icon(Icons.shopping_cart_outlined),
                                color: Colors.white,
                                onPressed: () {},
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Hi, Lorem',
                            style: GoogleFonts.overpass(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Welcome to MedHub',
                            style: GoogleFonts.overpass(
                              fontSize: 16,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Top Categories',
                        style: GoogleFonts.overpass(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: categories
                            .map((category) => CategoryItem(
                                title: category.title,
                                icon: category.icon,
                                gradientColors: category.gradientColors))
                            .toList(),
                      ),
                      const SizedBox(height: 24),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CategoryScreen()));
                        },
                        child: Container(
                          height: 130,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/slider.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blue[50],
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Deals of the Day',
                            style: GoogleFonts.overpass(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'More',
                              style: GoogleFonts.overpass(
                                fontSize: 14,
                                color: Colors.teal,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: deals
                            .map((deal) => DealItem(
                                title: deal.title,
                                price: deal.price,
                                rating: deal.rating,
                                imagePath: deal.imagePath))
                            .toList(),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Featured Brands',
                        style: GoogleFonts.overpass(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: brands
                            .map((brand) => BrandItem(
                                name: brand.name, imagePath: brand.imagePath))
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 200,
              left: 16.0,
              right: 16.0,
              child: Material(
                elevation: 4.0,
                borderRadius: BorderRadius.circular(30.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Medicine & Healthcare products',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.add_box_rounded, size: 32, color: Color(0xff0F3759)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
      ),
    );
  }
}
