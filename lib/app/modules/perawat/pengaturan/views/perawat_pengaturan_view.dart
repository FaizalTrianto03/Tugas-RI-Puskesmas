import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/perawat_pengaturan_controller.dart';

class PerawatPengaturanView extends GetView<PerawatPengaturanController> {
  const PerawatPengaturanView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Pengaturan',
          style: TextStyle(
            color: Color(0xFF02B1BA),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _buildProfileCard(),
                const SizedBox(height: 16),
                _buildMenuCard(),
              ],
            ),
          ),
          Positioned(
            bottom: -320,
            right: -320,
            child: Container(
              width: 720,
              height: 720,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    const Color(0xFF02B1BA).withValues(alpha: 0.38),
                    const Color(0xFF02B1BA).withValues(alpha: 0.18),
                    const Color(0xFF84F3EE).withValues(alpha: 0.0),
                  ],
                  stops: const [0.0, 0.5, 1.0],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildProfileCard() {
    return Obx(() => Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: const Color(0xFF02B1BA),
            child: Text(
              controller.namaInisial.value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              controller.getAbbreviation(controller.namaLengkap.value),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    ));
  }
  
  Widget _buildMenuCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildMenuItem(
            icon: Icons.person_outline,
            title: 'Kelola Data Diri',
            onTap: controller.kelolaDataDiri,
            showDivider: true,
          ),
          _buildMenuItem(
            icon: Icons.lock_outline,
            title: 'Kelola Kata Sandi',
            onTap: controller.kelolaKataSandi,
            showDivider: true,
          ),
          _buildMenuItem(
            icon: Icons.logout,
            title: 'Keluar',
            onTap: controller.showLogoutDialog,
            isRed: true,
          ),
        ],
      ),
    );
  }
  
  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    bool showDivider = false,
    bool isRed = false,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: isRed ? const Color(0xFFFF4242) : Colors.black87,
                  size: 24,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      color: isRed ? const Color(0xFFFF4242) : Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                if (!isRed)
                  const Icon(
                    Icons.chevron_right,
                    color: Colors.black54,
                  ),
              ],
            ),
          ),
        ),
        if (showDivider)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Divider(
              height: 1,
              color: Colors.grey.shade300,
            ),
          ),
      ],
    );
  }
}
