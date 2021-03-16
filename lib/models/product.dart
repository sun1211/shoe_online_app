class Product {
  final int id;
  final String img;
  final String name;
  final String price;
  final List<String> mulImg;
  final List<String> sizes;

  Product({
    this.id,
    this.img,
    this.name,
    this.price,
    this.mulImg,
    this.sizes,
  });
}

List<Product> productList = [
  Product(
    id: 1,
    img: 'assets/images/adapt-bb-2-basketball-shoe-lgBfBb_1.jpg',
    name: 'Nike Adapt BB 2.0',
    price: '299.00',
    mulImg: [
      'assets/images/adapt-bb-2-basketball-shoe-lgBfBb_1.jpg',
      'assets/images/adapt-bb-2-basketball-shoe-lgBfBb_2.jpg',
      'assets/images/adapt-bb-2-basketball-shoe-lgBfBb_3.jpg',
      'assets/images/adapt-bb-2-basketball-shoe-lgBfBb_4.jpg',
    ],
    sizes: [
      '40',
      '41',
      '41,5',
      '42',
      '43',
      '44',
    ],
  ),
  Product(
    id: 2,
    img: 'assets/images/air-vapormax-360-shoe-KBGFwq_1.jpg',
    name: 'Nike Adapt BB 2.0',
    price: '299.00',
    mulImg: [
      'assets/images/air-vapormax-360-shoe-KBGFwq_1.jpg',
      'assets/images/air-vapormax-360-shoe-KBGFwq_2.jpg',
      'assets/images/air-vapormax-360-shoe-KBGFwq_3.jpg',
      'assets/images/air-vapormax-360-shoe-KBGFwq_4.jpg',
    ],
    sizes: [
      '40',
      '41',
      '41,5',
      '42',
      '43',
      '44',
    ],
  ),
  Product(
    id: 3,
    img: 'assets/images/joyride-cc-shoe-Qbt71m_1.jpg',
    name: 'Nike Joyride CC',
    price: '144.00',
    mulImg: [
      'assets/images/joyride-cc-shoe-Qbt71m_1.jpg',
      'assets/images/joyride-cc-shoe-Qbt71m_2.jpg',
      'assets/images/joyride-cc-shoe-Qbt71m_3.jpg',
      'assets/images/joyride-cc-shoe-Qbt71m_4.jpg',
    ],
    sizes: [
      '40',
      '41',
      '41,5',
      '42',
      '43',
      '44',
    ],
  ),
  Product(
    id: 4,
    img: 'assets/images/jordan-max-200-shoe-C2S1xN_1.jpg',
    name: 'ordan Max 200',
    price: '104.00',
    mulImg: [
      'assets/images/jordan-max-200-shoe-C2S1xN_1.jpg',
      'assets/images/jordan-max-200-shoe-C2S1xN_2.jpg',
      'assets/images/jordan-max-200-shoe-C2S1xN_3.jpg',
      'assets/images/jordan-max-200-shoe-C2S1xN_4.jpg',
    ],
    sizes: [
      '40',
      '41',
      '41,5',
      '42',
      '43',
      '44',
    ],
  ),
  Product(
    id: 5,
    img: 'assets/images/jordan-aerospace-720-shoe-MtlBtG_1.jpg',
    name: 'ordan Max 200',
    price: '104.00',
    mulImg: [
      'assets/images/jordan-aerospace-720-shoe-MtlBtG_1.jpg',
      'assets/images/jordan-aerospace-720-shoe-MtlBtG_2.jpg',
      'assets/images/jordan-aerospace-720-shoe-MtlBtG_3.jpg',
      'assets/images/jordan-aerospace-720-shoe-MtlBtG_4.jpg',
    ],
    sizes: [
      '40',
      '41',
      '41,5',
      '42',
      '43',
      '44',
    ],
  ),
];
