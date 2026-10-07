import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12,
          ),

          child: Row(
            children: [
              // =========================
              // LOGO
              // =========================
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: const Color(0xff1769E0),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.shopping_bag,
                  color: Colors.white,
                  size: 24,
                ),
              ),

              const SizedBox(width: 10),

              // =========================
              // APP NAME
              // =========================
              Text(
                "SomShop",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff123B7A),
                ),
              ),

              const Spacer(),

              // =========================
              // NOTIFICATION
              // =========================
              Stack(
                clipBehavior: Clip.none,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                      size: 27,
                      color: Color(0xff374151),
                    ),
                  ),

                  // Notification number
                  Positioned(
                    right: 4,
                    top: 4,
                    child: Container(
                      width: 17,
                      height: 17,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "3",
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(width: 8),

              // =========================
              // PROFILE IMAGE
              // =========================
              const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                  "https://i.pravatar.cc/150?img=12",
                ),
              ),

              const SizedBox(width: 5),

              // =========================
              // DROPDOWN
              // =========================
              const Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xff374151),
                size: 22,
              ),
            ],
          ),
        ),
      ),
    );
  }
}