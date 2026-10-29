import 'package:flutter/material.dart';

class Trang1 extends StatefulWidget {
  const Trang1({super.key});

  @override
  State<Trang1> createState() => _Trang1State();
}

class _Trang1State extends State<Trang1> {
  static const _functions = [
    ('Thông báo', Icons.notifications_active_outlined, Color(0xFFE5394F)),
    ('Hộp thư', Icons.mail, Color(0xFF1689E8)),
    ('Lịch công tác', Icons.calendar_month, Color(0xFFFF9861)),
    ('Lịch giảng dạy/\ncoi thi', Icons.event_available, Color(0xFFE54456)),
    ('Đề xuất tạm\nngưng', Icons.pause_circle_filled, Color(0xFFFFC42E)),
    ('Đề xuất dạy bù', Icons.co_present, Color(0xFF10A889)),
  ];

  static const _tabs = [
    ('Trang chủ', Icons.home_rounded),
    ('Lịch công tác', Icons.calendar_month_outlined),
    ('Thông báo', Icons.sticky_note_2_outlined),
    ('Cá nhân', Icons.person_outline),
  ];

  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    const background = Color(0xFFF6F5FA);
    const brandRed = Color(0xFFB52C35);

    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          SizedBox(
            height: 282,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(height: 236, color: brandRed),
                SafeArea(
                  bottom: false,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 18, 20, 0),
                    child: Row(
                      children: [
                        Container(
                          width: 52,
                          height: 52,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFD41F),
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 3),
                          ),
                          child: const Text(
                            'G',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(width: 14),
                        const Expanded(
                          child: Text(
                            'Xin chào, Đinh Hoàng Gia',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.18),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white.withValues(alpha: 0.18),
                            ),
                          ),
                          child: IconButton(
                            tooltip: 'Thông báo',
                            onPressed: () => setState(() => _selectedTab = 2),
                            icon: const Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  right: 20,
                  bottom: 0,
                  child: Container(
                    height: 142,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.06),
                          blurRadius: 16,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.event_note_rounded,
                          color: Color(0xFF167FE5),
                          size: 62,
                        ),
                        const SizedBox(width: 16),
                        Container(width: 1, height: 78, color: Colors.black12),
                        const SizedBox(width: 16),
                        const Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lịch hôm nay:',
                                style: TextStyle(
                                  color: Color(0xFF555D6B),
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 7),
                              Text(
                                'Không tìm thấy lịch cá nhân',
                                style: TextStyle(
                                  color: Color(0xFF252A35),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 28, 20, 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 5,
                        height: 28,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1689E8),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text(
                          'Chức năng',
                          style: TextStyle(
                            color: Color(0xFF252A35),
                            fontSize: 23,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.tune, size: 19),
                        label: const Text('Tùy chỉnh'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xFF283142),
                          side: const BorderSide(color: Color(0xFFE1E5EB)),
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _functions.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 8,
                          childAspectRatio: 0.78,
                        ),
                    itemBuilder: (context, index) {
                      final item = _functions[index];
                      return Column(
                        children: [
                          Container(
                            width: 76,
                            height: 76,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(item.$2, color: item.$3, size: 42),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            item.$1,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Color(0xFF252A35),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              height: 1.3,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        height: 6,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1689E8),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      const SizedBox(width: 9),
                      Container(
                        width: 7,
                        height: 7,
                        decoration: const BoxDecoration(
                          color: Color(0xFF9DCDF2),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        child: Container(
          height: 68,
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Color(0xFFE8E8EC))),
          ),
          child: Row(
            children: [
              for (var index = 0; index < _tabs.length; index++)
                Expanded(
                  child: InkWell(
                    onTap: () => setState(() => _selectedTab = index),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          _tabs[index].$2,
                          size: 26,
                          color: _selectedTab == index
                              ? brandRed
                              : const Color(0xFF263142),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          _tabs[index].$1,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                            color: _selectedTab == index
                                ? brandRed
                                : const Color(0xFF757575),
                            fontWeight: _selectedTab == index
                                ? FontWeight.w600
                                : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
