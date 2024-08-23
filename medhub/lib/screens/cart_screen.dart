// screens/shopping_cart_page.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/cart_components/cart_item.dart';
import '../components/cart_components/coupon_section.dart';
import '../components/cart_components/payment_summary.dart';
import 'checkout_success.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your cart',
          style: GoogleFonts.overpass(
            color: const Color(0xff090F47),
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: const [
                  CartItem(
                      title: 'Sugar free gold',
                      subtitle: 'bottle of 500 pellets',
                      price: 'Rp 25.000',
                      imagePath:
                          'https://s3-alpha-sig.figma.com/img/4b41/8caa/a9807204c4c327a220ea85cb2a73ac43?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=lNbLqpwiwoNy0KdG~DfafooK1ybE9FHQG4~aSZ295EreiXud4GsudQ6zfY8e3hj0GaBGg~isyH4Qj6zNXGJ0BjEbf27y9uGeqP9WuwGGae0kziyo038SqP1xdS5SsJwE62xuanmcVVhYN~QRsAB-NaGWQ04OexgqYbGjZEurULFbGnlymc9lSx43yV-VQEOolRuKFoeJmClhCsoH8K7JPXXFEvN-IL~vfx6cIGNBL4JF~D2T4tSYGDzHC2laRzZsmZYLwiUtd238wnF83qX4kXWBZgMzlpcM3hgxpuQqitBjN2KFrr7fPpZyh5y0~u0CpsAC7nd8KQHQcp3UwsuxXg__'),
                  SizedBox(height: 16),
                  CartItem(
                      title: 'Sugar free gold',
                      subtitle: 'bottle of 500 pellets',
                      price: 'Rp 18.000',
                      imagePath:
                          'https://s3-alpha-sig.figma.com/img/4cdb/0a36/c32e718bd336c664b01f9c7d2cf7c601?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qwaZcjGb~SKhIR6KUf5NGwrSntyaV2Xr9GuZqmGAfenEcv7ssgwPGEIClRV8UoQJzK5NnjCqb-7YOtRVO6kxUwwmTjFcaFuGqeHDMsclB4mS9r27QNRb5k0hUjy7hfI7HbuyB8W0958pRPwQmOsXZw5OrMJtTEnwY0x1IJ3xmiRIo1b9XqnoZri1ZlGda2G9g19nuRvqRroO51KxzDSHAxTlXyqrTLU08tyO59uqNFRlapFKe1PvGU-1ZINlXhi3U4xoPk7ddIEV0eXX0TKKjl~yIeF3wgi-GNlKeuXI~jP3ee--tIlVaiJZJT9o8~eBf4A-Fhvgnm0wZ4XQUa3fsg__'),
                  SizedBox(height: 16),
                  CouponSection(),
                ],
              ),
            ),
            const PaymentSummary(),
            const SizedBox(height: 16),
            _buildPlaceOrderButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceOrderButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const CheckoutSuccess();
        }));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff0F3759),
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Place Order @ Rp 185.000',
            style: GoogleFonts.overpass(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
