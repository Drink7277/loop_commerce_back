# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

[
  {
    name: "Premium Wireless Headphones",
    price: 299,
    original_price: 399,
    image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500&h=500&fit=crop",
    category: "Electronics",
    description: "Experience exceptional sound quality with our premium wireless headphones featuring active noise cancellation and 30-hour battery life.",
    rating: 4.8,
    reviews: 2847,
    in_stock: true,
    features: ["Active Noise Cancellation", "30hr Battery", "Premium Build", "Wireless Charging"]
  },
  {
    name: "Smart Fitness Watch",
    price: 249,
    image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500&h=500&fit=crop",
    category: "Wearables",
    description: "Track your health and fitness goals with advanced sensors, GPS tracking, and smart notifications.",
    rating: 4.6,
    reviews: 1923,
    in_stock: true,
    features: ["Heart Rate Monitor", "GPS Tracking", "Water Resistant", "7-day Battery"]
  },
  {
    name: "Ultra HD Webcam",
    price: 129,
    image: "https://images.unsplash.com/photo-1587825140708-dfaf72ae4b04?w=500&h=500&fit=crop",
    category: "Electronics",
    description: "Professional 4K webcam with auto-focus and built-in microphone for crystal clear video calls.",
    rating: 4.7,
    reviews: 856,
    in_stock: true,
    features: ["4K Resolution", "Auto Focus", "Built-in Mic", "Plug & Play"]
  },
  {
    name: "Ergonomic Office Chair",
    price: 349,
    original_price: 449,
    image: "https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=500&h=500&fit=crop",
    category: "Furniture",
    description: "Comfortable ergonomic office chair with lumbar support and adjustable height for all-day comfort.",
    rating: 4.5,
    reviews: 1247,
    in_stock: true,
    features: ["Lumbar Support", "Height Adjustable", "Breathable Mesh", "5-Year Warranty"]
  },
  {
    name: "Mechanical Keyboard",
    price: 179,
    image: "https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=500&h=500&fit=crop",
    category: "Electronics",
    description: "Premium mechanical keyboard with RGB backlighting and tactile switches for the ultimate typing experience.",
    rating: 4.9,
    reviews: 3421,
    in_stock: true,
    features: ["RGB Backlighting", "Tactile Switches", "USB-C", "Gaming Mode"]
  },
  {
    name: "Wireless Mouse",
    price: 79,
    image: "https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?w=500&h=500&fit=crop",
    category: "Electronics",
    description: "Precision wireless mouse with ergonomic design and long-lasting battery for productivity and gaming.",
    rating: 4.4,
    reviews: 967,
    in_stock: true,
    features: ["Ergonomic Design", "Long Battery Life", "Precision Tracking", "Silent Clicks"]
  },
  {
    name: "Portable Speaker",
    price: 89,
    original_price: 119,
    image: "https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=500&h=500&fit=crop",
    category: "Audio",
    description: "Compact portable speaker with powerful sound and waterproof design for outdoor adventures.",
    rating: 4.6,
    reviews: 1534,
    in_stock: true,
    features: ["Waterproof", "12hr Battery", "Bluetooth 5.0", "Compact Design"]
  },
  {
    name: "Laptop Stand",
    price: 59,
    image: "https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=500&h=500&fit=crop",
    category: "Accessories",
    description: "Adjustable aluminum laptop stand for improved ergonomics and better cooling performance.",
    rating: 4.3,
    reviews: 743,
    in_stock: true,
    features: ["Adjustable Height", "Aluminum Build", "Better Cooling", "Portable"]
  },
  {
    name: "USB-C Hub",
    price: 69,
    image: "https://images.unsplash.com/photo-1625842268584-8f3296236761?w=500&h=500&fit=crop",
    category: "Accessories",
    description: "Multi-port USB-C hub with HDMI, USB 3.0, and fast charging capabilities for modern laptops.",
    rating: 4.5,
    reviews: 892,
    in_stock: true,
    features: ["Multiple Ports", "4K HDMI", "Fast Charging", "Compact Design"]
  },
  {
    name: "Desk Lamp",
    price: 79,
    image: "https://images.unsplash.com/photo-1513506003901-1e6a229e2d15?w=500&h=500&fit=crop",
    category: "Lighting",
    description: "LED desk lamp with adjustable brightness and color temperature for optimal work lighting.",
    rating: 4.7,
    reviews: 654,
    in_stock: true,
    features: ["LED Technology", "Adjustable Brightness", "Color Temperature", "Touch Control"]
  },
  {
    name: "Coffee Mug",
    price: 24,
    image: "https://images.unsplash.com/photo-1514228742587-6b1558fcf93a?w=500&h=500&fit=crop",
    category: "Drinkware",
    description: "Premium ceramic coffee mug with heat retention technology and comfortable grip.",
    rating: 4.2,
    reviews: 1876,
    in_stock: true,
    features: ["Ceramic Material", "Heat Retention", "Comfortable Grip", "Dishwasher Safe"]
  },
  {
    name: "Phone Case",
    price: 39,
    image: "https://images.unsplash.com/photo-1601593346740-925612772716?w=500&h=500&fit=crop",
    category: "Accessories",
    description: "Protective phone case with military-grade drop protection and wireless charging compatibility.",
    rating: 4.4,
    reviews: 2143,
    in_stock: true,
    features: ["Drop Protection", "Wireless Charging", "Slim Design", "Easy Grip"]
  },
  {
    name: "Monitor",
    price: 299,
    original_price: 349,
    image: "https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=500&h=500&fit=crop",
    category: "Electronics",
    description: "27-inch 4K monitor with IPS panel and USB-C connectivity for crisp visuals and productivity.",
    rating: 4.8,
    reviews: 1342,
    in_stock: true,
    features: ["4K Resolution", "IPS Panel", "USB-C", "27-inch Display"]
  },
  {
    name: "Backpack",
    price: 89,
    image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=500&h=500&fit=crop",
    category: "Bags",
    description: "Durable laptop backpack with multiple compartments and water-resistant material.",
    rating: 4.6,
    reviews: 987,
    in_stock: true,
    features: ["Laptop Compartment", "Water Resistant", "Multiple Pockets", "Comfortable Straps"]
  },
  {
    name: "Power Bank",
    price: 49,
    image: "https://images.unsplash.com/photo-1609592094137-94190e775b24?w=500&h=500&fit=crop",
    category: "Electronics",
    description: "High-capacity power bank with fast charging and multiple device support for on-the-go power.",
    rating: 4.5,
    reviews: 1654,
    in_stock: true,
    features: ["High Capacity", "Fast Charging", "Multiple Ports", "LED Indicator"]
  },
  {
    name: "Sunglasses",
    price: 129,
    original_price: 179,
    image: "https://images.unsplash.com/photo-1572635196237-14b3f281503f?w=500&h=500&fit=crop",
    category: "Fashion",
    description: "Premium polarized sunglasses with UV protection and lightweight titanium frame.",
    rating: 4.7,
    reviews: 823,
    in_stock: true,
    features: ["Polarized Lenses", "UV Protection", "Titanium Frame", "Lightweight"]
  },
  {
    name: "Water Bottle",
    price: 34,
    image: "https://images.unsplash.com/photo-1602143407151-7111542de6e8?w=500&h=500&fit=crop",
    category: "Drinkware",
    description: "Insulated stainless steel water bottle that keeps drinks cold for 24 hours or hot for 12 hours.",
    rating: 4.8,
    reviews: 2156,
    in_stock: true,
    features: ["24hr Cold", "12hr Hot", "Stainless Steel", "Leak Proof"]
  },
  {
    name: "Notebook",
    price: 19,
    image: "https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?w=500&h=500&fit=crop",
    category: "Stationery",
    description: "Premium leather-bound notebook with dotted pages perfect for bullet journaling and note-taking.",
    rating: 4.3,
    reviews: 1432,
    in_stock: true,
    features: ["Leather Bound", "Dotted Pages", "Premium Paper", "Elastic Band"]
  },
  {
    name: "Plant Pot",
    price: 29,
    image: "https://images.unsplash.com/photo-1485955900006-10f4d324d411?w=500&h=500&fit=crop",
    category: "Home",
    description: "Modern ceramic plant pot with drainage system perfect for indoor plants and home decoration.",
    rating: 4.4,
    reviews: 765,
    in_stock: true,
    features: ["Ceramic Material", "Drainage System", "Modern Design", "Indoor Use"]
  },
  {
    name: "Candle",
    price: 39,
    image: "https://images.unsplash.com/photo-1602874801007-9b3c8d97e9f5?w=500&h=500&fit=crop",
    category: "Home",
    description: "Luxury scented candle with natural soy wax and essential oils for relaxation and ambiance.",
    rating: 4.6,
    reviews: 1243,
    in_stock: true,
    features: ["Natural Soy Wax", "Essential Oils", "40hr Burn Time", "Luxury Scent"]
  }
].each do |product_attr|
  Product.create(product_attr)
end
