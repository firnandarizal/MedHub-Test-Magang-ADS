
import 'package:flutter/material.dart';
import 'package:medhub/screens/product_detail.dart';
import '../components/category_components/diet_item.dart';
import '../components/category_components/product_item.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Diabetes Care',
          style: TextStyle(color: Colors.black),
        ),
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/slider.png'),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.lightBlue[50],
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Diabetic Diet',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  dietItem('Sugar Substitute', 'assets/images/c1.png'),
                  dietItem('Juices & Vinegars', 'assets/images/c2.png'),
                  dietItem('Vitamins Medicines', 'assets/images/c3.png'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'All Products',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                productItem(
                    'Accu-check Active Test Strip',
                    'Rp 112.000',
                    'SALE',
                    4.2,
                    'https://s3-alpha-sig.figma.com/img/0243/8bc1/9bf863e7d113ed5de773e70fa01e3f08?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lqhiCNuvrTJPgf3T5YGBEyreVQKtLI8s31-s0~5EmsziXkp7ndN-ijCugFOdjbgw3gZTVLv2KFP~TS96xNVS6wkfMyI8iTiS7FmDKdxT2BkdP4Aux4i4rQcnSWR-uxFj628Y1wDEfsQyBlSinQu6K70rxVyNzkxEJpSIoN9PUEkVUU7k0WIG8DkfOGzQWhE93Oo2ncAwIkBac08jylFBua4dBgSbpJY29cScwYn69ynnplAf0U2jkaMuAlRtPa585d2iYgv8eA~~NS00wPXLeUPN1sHGvqZ5~I9079iZGAjqTJAri4tKzXPIAOKXH0bPi3MgsEDcAZZCGohVwKMEGQ__'),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProductDetail();
                    }));
                  },
                  child: productItem(
                      'Omron HEM-8712 BP Monitor',
                      'Rp 150.000',
                      '15% OFF',
                      4.2,
                      'https://s3-alpha-sig.figma.com/img/65e5/109d/bfedb53f2363ce42dba6abbd8b3f6fe8?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SrtpJAuvFGOiTnzYbelMNMxw5DCUkoRner2morhpl-97DSdp0AUYBBQErU-cvbc~O5RS7IatnoOb0LeepNBo1EV3YsR6ch6DITZ2hM1sxn-~uqa13HMkKUVbZVkFGosKQ0iH5ZweRi-T8Re~zYO-CpQdmj2HGz-CGJU5x7-pt2D~pODfpoz1i-FMI7AZt7i-CgbtjG1AAAgfCJfomUmgUa91zC7Ao1Tvn~k5ptakc8RrL53GPOAiozhi3c9HbqJzn6cL6MxM-x7h5MS0ofvvxUb-puRYQ2BPDodaItbJtNeAmmmYe2C1WyRCs6mhyZknEMf23lLNTCxll8o5lQ1pGA__'),
                ),
                productItem(
                    'Accu-check Active Test Strip',
                    'Rp 112.000',
                    '',
                    4.2,
                    'https://s3-alpha-sig.figma.com/img/8da8/a5f6/14f1c22ced6a13c18c280b8763d701d2?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=DGOr5hY~uyxSQciyGVijGV88Xoehrg8nZNJj1Q-v1VkAJo-a2gA5aoizG3nkNQE6C0M7LbVJ2rXRWHq53FKCUf2HXzlgYTFKdkQs8ysfkdKTQT2lbB8nj7Y2zYtAqBxo9OjIK2HgSfyOf8mG7BSevMb8XjfsCYg6bk7oJFNUlayYsil-TL6RBRyPeEYECw0hQQqissRH0CZlpaoXFECtEDvs0FDYBoyy42jcGYd2WMqJS~JajJacQtbeydB0xN2RnU3fhWwIlynbeHbEOCvQkzPbRxpnsf0SP4wfD54fn0diW2wiRx7QZd6HbduKW3iELlyD57u8bB~4I7hpMv-czw__'),
                productItem('Omron HEM-8712 BP Monitor', 'Rp 150.000', '', 4.2,
                    'https://s3-alpha-sig.figma.com/img/4553/9146/d8a4e8523d40f6a6980c7d05d749c2c8?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SMrO645JpGMdSLO9qJsiywLjkUv~vm0ninkwro0Mcw6vjoruRcPoQdyUNMXchqIMLcl7SDwWPnD8iYSvGxYDfGCQq4F8ztZJ0BWFZ6BuyGtxA279YkSHX6Nyx6IowYAhxA~DpdiyZfnvUN0Kc87rubst0SkPW3dQ7qZrtmtrKerPS~9TBQJYSAeZKoMCA3eA-46L7I-Inq0O5F6XnsMXky2Qv33M70pQ6RKi5Td573GMllNdwo7CxRevpqW5Dvb1vRGM5hSFBmZM36rMMoKWNpuO6bxT2TvdqNJO9RVLHpmax8rkgZnFkglvdGLY3PUwRIwDJoG02JFVqp9U73QhBw__'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
