import '../../models/product.dart';
import 'package:flutter/foundation.dart';

class ProductsManager with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Adidas Galaxy 6',
      description:
          'ĐÔI GIÀY THỂ THAO THOẢI MÁI CÓ SỬ DỤNG CHẤT LIỆU TÁI CHẾ - Xỏ giày và xuất phát. Đôi giày chạy bộ adidas này sẽ giúp bạn luôn thoải mái dẫu cho ngày mới kéo dài vô tận. Đây là một đôi giày hàng ngày tuyệt vời, với thân giày bằng vải lưới siêu nhẹ và thoáng khí giúp đôi chân bạn luôn mát mẻ, cùng đế giữa Cloudfoam đàn hồi. Đế ngoài bằng cao su bám vững vàng trên mọi bề mặt, từ sân cỏ ẩm ướt tới sân đất nện. Bạn có thể thoải mái thay đổi kế hoạch mà không cần đổi giày. Làm từ một nhóm chất liệu tái chế, thân giày có chứa tối thiểu 50% thành phần tái chế. Sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa.',
      price: 29.99,
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0456/5070/6581/products/GW4139-1_300x300.jpg?v=1666605303',
      isFavorite: true,
    ),
    Product(
      id: 'p2',
      title: 'Adidas Nmd_R1 Primeblue',
      description:
          'Soạn đồ, mang giày và xuất phát. Hành trình phiêu lưu khắp phố phường đang vẫy gọi với đôi giày NMD_R1 này. Là phiên bản cập nhật của dòng giày chạy bộ thập niên 80 trứ danh trong kho di sản adidas, đôi giày trainer hiện đại này có thân giày bằng vải dệt kim mềm mại, co giãn và lớp đệm Boost hoàn trả năng lượng cho cảm giác thoải mái suốt ngày dài. Sắc màu táo bạo và các miếng bịt đế giữa đặc trưng gây ấn tượng mạnh mẽ, vậy nên bạn chắc chắn sẽ xuất hiện đầy phong cách ở bất cứ nơi đâu.',
      price: 59.99,
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0456/5070/6581/products/GZ9261-1_fd09a032-b945-4848-8096-5f903ca3e15d_540x.jpg?v=1632743766',
    ),
    Product(
      id: 'p3',
      title: 'Adidas Ultraboost 4.0 Dna',
      description:
          'Dù mới chỉ ra mắt vào năm 2015 nhưng adidas Ultra Boost 4.0 DNA đã nhanh chóng trở thành một huyền thoại mới trong giới giày chạy bộ. Được cấu thành từ vải dệt kim thoáng khí, mềm mại. Chất liệu vải cao cấp tạo nên form giày vừa vặn, có tác dụng nâng đỡ đôi chân, giúp định hướng chuyển động.',
      price: 19.99,
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0456/5070/6581/products/FY9120-1_1024x1024@2x.jpg?v=1667987217',
    ),
    Product(
      id: 'p4',
      title: 'Teva Hurricane Xlt2',
      description:
          'Hurricane XLT2 luôn nằm trong danh sách những sản phẩm bán chạy và được yêu thích nhất, trở thành một trong những sản phẩm biểu tượng của Teva. Là bản nâng cấp "Atlas" về diện mạo và chất lượng hoàn toàn mới, với thiết kế dây đai phản quang bắt mắt, trang bị thêm lớp đệm lót gót chân mềm mại tối ưu có khả năng bám đường thậm chí còn tốt hơn bao giờ hết.',
      price: 49.99,
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0456/5070/6581/products/1019235-LEMA-1_540x.jpg?v=1633326984',
      isFavorite: true,
    ),
    Product(
      id: 'p5',
      title: 'Teva Midform Universal',
      description:
          'Với chiều cao vừa phải 1 ¼ ”, Midform Universal phân tách sự khác biệt giữa Flatform Universal và Original Universal cổ điển của chúng tôi để mang lại giao diện nền tảng táo bạo, mới mẻ. Phù hợp khi tham gia hoạt động thường ngày, đến bể bơi hay các hoạt động lễ hội sôi động.',
      price: 49.99,
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0456/5070/6581/products/1090969-OBNC-1_540x.jpg?v=1623040302',
      isFavorite: true,
    ),
    Product(
      id: 'p6',
      title: 'New Balance Fresh Foam X 1080V12',
      description:
          'Nếu chỉ sản xuất một loại giày chạy bộ, chắc chắn đó sẽ là dòng 1080. Điều làm nên sự độc đáo của 1080 không chỉ là đôi giày chạy bộ tốt nhất mà New Balance đã tạo ra, mà nó còn có tính linh hoạt hoàn hảo. 1080 mang đến hiệu suất đỉnh cao cho mọi vận động viên chạy, dù bạn đang luyện tập cho cuộc thi đẳng cấp thế giới hay chỉ là bắt một chuyến tàu vào giờ cao điểm.',
      price: 49.99,
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0456/5070/6581/products/W1080M12-1_540x.jpg?v=1652343707',
      isFavorite: true,
    ),
  ];

  int get itemCount {
    return _items.length;
  }

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((item) => item.isFavorite).toList();
  }

  Product? findById(String id) {
    try {
      return _items.firstWhere((item) => item.id == id);
    } catch (error) {
      return null;
    }
  }

  void addProduct(Product product) {
    _items.add(
      product.copyWith(
        id: 'p${DateTime.now().toIso8601String()}',
      ),
    );
    notifyListeners();
  }

  void updlateProduct(Product product) {
    final index = _items.indexWhere((item) => item.id == product.id);
    if (index >= 0) {
      _items[index] = product;
      notifyListeners();
    }
  }

  void toggleFavoriteStatus(Product product) {
    final savedStatus = product.isFavorite;
    product.isFavorite = !savedStatus;
  }

  void deleteProduct(String id) {
    final index = _items.indexWhere((item) => item.id == id);
    _items.removeAt(index);
    notifyListeners();
  }
}
//CK21V7K035


