import 'package:shoflex/models/product_model.dart';

final List<Product> dummyProducts = [
  // --- HOODIES ---
  Product(
    name: "Urban Oversized Hoodie",
    category: "Hoodies",
    price: 2499.00,
    sizes: ["S", "M", "L", "XL"],
    colors: ["Black", "Grey", "Navy"],
    description: "Heavy-weight premium cotton with a soft brushed interior.",
    returnCondition: "14-day return if tags are intact.",
    rating: 4.8,
    images: ["assets/products/shirt.png","assets/products/shirt.png"],
  ),
  Product(
    name: "Tech-Fleece Zip Up",
    category: "Hoodies",
    price: 3100.00,
    sizes: ["M", "L", "XL"],
    colors: ["Olive", "Charcoal"],
    description: "Lightweight warmth with a modern tailored fit for athletes.",
    returnCondition: "7-day easy exchange.",
    rating: 4.6,
   images: ["assets/products/shirt.png","assets/products/shirt.png"],
  ),

  // --- FOOTWEAR ---
  Product(
    name: "Velocity Runner X",
    category: "Footwear",
    price: 5299.00,
    sizes: ["7", "8", "9", "10", "11"],
    colors: ["White/Blue", "All Black"],
    description: "Reactive foam cushioning for long-distance comfort.",
    returnCondition: "30-day trial period on indoor surfaces.",
    rating: 4.9,
    images: ["assets/products/shirt.png","assets/products/shirt.png"],
  ),
  Product(
    name: "Street Casual Sneakers",
    category: "Footwear",
    price: 1899.00,
    sizes: ["6", "7", "8", "9"],
    colors: ["Tan", "White", "Green"],
    description: "Classic low-top silhouette with a durable rubber sole.",
    returnCondition: "Returns accepted within 10 days.",
    rating: 4.3,
   images: ["assets/products/shirt.png","assets/products/shirt.png"],
  ),

  // --- OUTERWEAR ---
  Product(
    name: "Puffer Winter Jacket",
    category: "Outerwear",
    price: 4500.00,
    sizes: ["M", "L", "XL", "XXL"],
    colors: ["Yellow", "Black", "Red"],
    description: "Water-resistant outer shell with synthetic down insulation.",
    returnCondition: "Free returns for manufacturing defects.",
    rating: 4.7,
    images: ["assets/products/shirt.png","assets/products/shirt.png"],
  ),
  Product(
    name: "Classic Denim Jacket",
    category: "Outerwear",
    price: 2800.00,
    sizes: ["S", "M", "L"],
    colors: ["Light Wash", "Dark Indigo"],
    description: "Vintage style denim that ages beautifully with wear.",
    returnCondition: "Exchange only within 7 days.",
    rating: 4.5,
    images: ["assets/products/shirt.png","assets/products/shirt.png"],
  ),

  // --- T-SHIRTS ---
  Product(
    name: "Essential Cotton Tee",
    category: "T-Shirts",
    price: 799.00,
    sizes: ["S", "M", "L", "XL", "XXL"],
    colors: ["White", "Black", "Grey", "Blue"],
    description: "100% organic cotton for everyday breathability.",
    returnCondition: "Non-returnable for hygiene reasons.",
    rating: 4.9,
    images: ["assets/products/shirt.png","assets/products/shirt.png"],
  ),
  Product(
    name: "Graphic Print Tee",
    category: "T-Shirts",
    price: 1199.00,
    sizes: ["M", "L", "XL"],
    colors: ["White", "Beige"],
    description: "Bold street-art inspired graphic on premium jersey fabric.",
    returnCondition: "15-day return policy.",
    rating: 4.4,
   images: ["assets/products/shirt.png","assets/products/shirt.png"],
  ),

  // --- BOTTOMS ---
  Product(
    name: "Cargo Jogger Pants",
    category: "Bottoms",
    price: 2200.00,
    sizes: ["30", "32", "34", "36"],
    colors: ["Khaki", "Army Green", "Black"],
    description: "Utility-focused design with 6 pockets and elastic cuffs.",
    returnCondition: "Free 14-day returns.",
    rating: 4.6,
    images: ["assets/products/shirt.png","assets/products/shirt.png"],
  ),
  Product(
    name: "Slim Fit Chinos",
    category: "Bottoms",
    price: 1999.00,
    sizes: ["28", "30", "32", "34"],
    colors: ["Navy", "Grey", "Sand"],
    description: "Stretch-twill fabric for a smart-casual office look.",
    returnCondition: "Returns accepted if unwashed.",
    rating: 4.2,
   images: ["assets/products/shirt.png","assets/products/shirt.png"],
  ),
];


final List<Map<String, String>> categories = const [
    {"title": "Hoodies", "image": "assets/categories/hoodie.png"},
    {"title": "Shorts", "image": "assets/categories/shorts.png"},
    {"title": "Shoes", "image": "assets/categories/shoes.png"},
    {"title": "Bag", "image": "assets/categories/bag.png"},
    {"title": "Accessories", "image": "assets/categories/accessories.png"},
  ];




final List<Product> trendingProducts = [
  Product(
    name: "Urban Oversized Hoodie",
    category: "Hoodies",
    price: 2499.00,
    sizes: ["S", "M", "L", "XL"],
    colors: ["Black", "Grey", "Navy"],
    description: "Heavy-weight premium cotton with a soft brushed interior.",
    returnCondition: "14-day return if tags are intact.",
    rating: 4.8,
    images: ["assets/products/shirt.png","assets/products/shirt.png"],
  ),
  Product(
    name: "Velocity Runner X",
    category: "Footwear",
    price: 5299.00,
    sizes: ["7", "8", "9", "10", "11"],
    colors: ["White/Blue", "All Black"],
    description: "Reactive foam cushioning for long-distance comfort.",
    returnCondition: "30-day trial period on indoor surfaces.",
    rating: 4.9,
    images: ["assets/products/shirt.png","assets/products/shirt.png"],
  ),
  Product(
    name: "Essential Cotton Tee",
    category: "T-Shirts",
    price: 799.00,
    sizes: ["S", "M", "L", "XL", "XXL"],
    colors: ["White", "Black", "Grey"],
    description: "100% organic cotton for everyday breathability.",
    returnCondition: "Non-returnable for hygiene reasons.",
    rating: 4.9,
    images: ["assets/products/shirt.png","assets/products/shirt.png"],
  ),
  Product(
    name: "Puffer Winter Jacket",
    category: "Outerwear",
    price: 4500.00,
    sizes: ["M", "L", "XL"],
    colors: ["Black", "Red"],
    description: "Water-resistant shell with synthetic insulation.",
    returnCondition: "Free returns for defects.",
    rating: 4.7,
   images: ["assets/products/shirt.png","assets/products/shirt.png"],
  ),
];
