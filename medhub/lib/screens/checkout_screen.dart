import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/checkout_components/address_option.dart';
import '../components/checkout_components/button.dart';
import '../components/checkout_components/payment_option.dart';
import '../components/checkout_components/tittle.dart';


class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: GoogleFonts.poppins(
            color: Colors.black,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '2 Items in your cart',
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'TOTAL',
                        style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Rp 185.000',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              // Delivery Address Section
              SectionTitle('Delivery Address'),
              const SizedBox(height: 16),
              AddressOption(
                title: 'Home',
                address: '(031) 555-024\nJl. Rajawali No. 02, Surabaya',
                selected: true,
                onEdit: () {
                  // Handle edit address action
                },
              ),
              const SizedBox(height: 16),
              AddressOption(
                title: 'Office',
                address: '(031) 555-024\nJl. Gajah Mada No. 05, Sidoarjo',
                selected: false,
                onEdit: () {
                },
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(Icons.add, color: Colors.teal),
                    const SizedBox(width: 8),
                    Text(
                      'Add Address',
                      style: GoogleFonts.poppins(
                        color: Colors.teal,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              SectionTitle('Payment method'),
              const SizedBox(height: 16),
              PaymentOption(
                title: 'OVO',
                iconPath: 'https://s3-alpha-sig.figma.com/img/7ee4/8cc3/c88099d01db825666369d875b665d26f?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=X~VVl2SLwZfFm6vW9zLQ3CyRPrRCetf5vCwA5KXIkRo~s1V2luhgqY47DcAPTV0dQiK2YmW-5J~dlWankKw9hyslRIzgHEzJzCSIBsojkKVsYc1SiM-WnNOmxAkkxwiM3nB1CLJ~rPDiCH-oyPacXUKpOZt4iw4OoNlR9Pt2EF7mFTfE0Uwa3SgivcWndxsgtspqLJE7fVX6bHWMsNxyGgOFj66KbGy23SHyik22K5cOqjDrk5qKunpNKfwVO3Y5~dlFP4wNp8w77k~mBnh0rpKviFyJj7K~SyhK9P8h9Cf7Nlq9uu5tPomFrr-hwlUnKnZNrNzRkAleOBczvJQVNA__',
                selected: true,
              ),
              PaymentOption(
                title: 'Dana',
                iconPath: 'https://s3-alpha-sig.figma.com/img/452d/2a44/357977bcae54f567ecc8f2e8f641f9df?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MorKNlLWN3LMOalvInp~TvIAK382oDshurYX2xGRAdrprsY8G0HiztKeboEb74pKXg6MO-3qUymlCnapuzRJpJmIQ3eNpR2Pg5uHqyLnYSzWnbuAgoP4BEzOHOnkTCcfUirryQ1XW~HRcWovwgJWdu5-3LidKQA2kvcVCbQ860C3I9BPSf94S0cIJL6MB8L6OdVA4scijjU-QeRXyFaQ3WpDucSqHXodANfUHV-fSgnHWFJRu~0SHTBe6v50~KjDiSA8frUtlyoxf~ZelFsntbpC41RU2iETSJt7Xxo-ZI-SAvzWehHuxknhvY47nLYg-ec7qsC0w-waa1yF1dVzvA__',
                selected: false,
              ),
              PaymentOption(
                title: 'ShopeePay',
                iconPath: 'https://s3-alpha-sig.figma.com/img/4f4d/aaf1/f08e4ffc80bbc1b568b339ca3af3aefb?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QbE2w6hUrEOYmEj9SuxsjDWArWpBQ5JnWI3wDBtuseQsw4GuNebrrkDPoF0RgTnwiOllqSxwrGT4AVuWMXFDJvxWG5r8QR4ryUHb75GU6KWcgxKodf7yVWcJRrInfIHu08oar1YrZ0NsbweYk~NaCmLWVIfU4gc-hXEqMUwolBuEFhOeizEgmYzdjcqunEEMdGYNTfGAQlFkC3mkZs8ox6jr9UVdhPfsKLCUR1js0JuCbUFL7GUi~GGHu-WpmgFMYCV1VCLapqV1MNpOcSWki88FlkXMOBhpUifeY0Nfa0~~BLOKsqOU-nP2aSXsOBKF9u9tYocOWJunbgmd3Bk-4w__',
                selected: false,
              ),
              PaymentOption(
                title: 'GoPay',
                iconPath: 'https://s3-alpha-sig.figma.com/img/d9c5/4a19/1d30d8c597a285bda094926e6c63c5f1?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NPhqD7TVyXCYYI5ZLyjUIQcFiQV8lASQAs65Xb2H7rpXZ2qWPvJZ02cp0Axpx2tPmKaAJcYZKdKBZQnuta7B0j0eq9iWQ0BRtJ5FYPMOQF9oEH-wIOMFDIAfznlrqtYSMIzWpEo-Mb~vV4EuCAfAiwfu8f3kFrXvAl7DTrQ0NQGQan0FUsjVayIqE806c2Aqvy5xiwa0SuMUAO1IOPV9OuWLhjmOy79bw43QrqIT-n-Zztk9Odi8YfA5WDAAIUcdZ61pIzgDDnB6QbJy-ZzR~bTPvgyw5QtBVv~uXzHYlzfqya6Hdb95qcfRKWOj8izKcWk2SZSwfCUvB6Pbrv9T4Q__',
                selected: false,
              ),
              const SizedBox(height: 24),
              PayNowButton(
                onPressed: () {
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
