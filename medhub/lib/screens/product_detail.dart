import 'package:flutter/material.dart';
import 'package:rating_summary/rating_summary.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medhub/screens/cart_screen.dart';
import '../components/product_detail_components/package_option.dart'; 

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        actions: [
          IconButton(
            icon:
                const Icon(Icons.notifications_none, color: Color(0xff090F47)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined,
                color: Color(0xff090F47)),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sugar Free Gold Low Calories',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff090F47)),
              ),
              const SizedBox(height: 8),
              const Text(
                'Etiam mollis metus non purus',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: Container(
                  width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://s3-alpha-sig.figma.com/img/65e5/109d/bfedb53f2363ce42dba6abbd8b3f6fe8?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SrtpJAuvFGOiTnzYbelMNMxw5DCUkoRner2morhpl-97DSdp0AUYBBQErU-cvbc~O5RS7IatnoOb0LeepNBo1EV3YsR6ch6DITZ2hM1sxn-~uqa13HMkKUVbZVkFGosKQ0iH5ZweRi-T8Re~zYO-CpQdmj2HGz-CGJU5x7-pt2D~pODfpoz1i-FMI7AZt7i-CgbtjG1AAAgfCJfomUmgUa91zC7Ao1Tvn~k5ptakc8RrL53GPOAiozhi3c9HbqJzn6cL6MxM-x7h5MS0ofvvxUb-puRYQ2BPDodaItbJtNeAmmmYe2C1WyRCs6mhyZknEMf23lLNTCxll8o5lQ1pGA__'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Rp 56.000',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff090F47)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Add to cart',
                      style: TextStyle(fontSize: 16, color: Colors.teal),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Package size',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff090F47)),
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  PackageOption(
                      text: 'Rp 52.000\n500 pellets', color: Colors.teal),
                  SizedBox(width: 8),
                  PackageOption(
                      text: 'Rp 100.000\n110 pellets', color: Colors.grey),
                  SizedBox(width: 8),
                  PackageOption(
                      text: 'Rp 160.000\n300 pellets', color: Colors.grey),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Product Details',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff090F47)),
              ),
              const SizedBox(height: 8),
              const Text(
                'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 16),
              const Text(
                'Rating and Reviews',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff090F47)),
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Expanded(
                    child: RatingSummary(
                      color: Colors.teal,
                      counterFiveStars: 400,
                      counterFourStars: 200,
                      counterThreeStars: 70,
                      counterTwoStars: 0,
                      counterOneStars: 50,
                      counter: 923,
                      average: 4.4,
                      showAverage: true,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lorem Hoffman',
                    style: TextStyle(color: Color(0xff090F47)),
                  ),
                  Text('05 August 2024'),
                ],
              ),
              Row(
                children: [
                  const Text('4.2'),
                  Icon(Icons.star, color: Colors.yellow[700], size: 16),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas'),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff0F3759),
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {
              // Continue button action
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return  const ShoppingCartPage();
              }));
            },
            child: Text(
              'GO TO CART',
              style: GoogleFonts.overpass(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
