<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>FashionStyle - Cửa hàng quần áo</title>
  <link rel="stylesheet" href="style.css" />
</head>
<body>
  <header>
    <h1>FashionStyle</h1>
    <nav>
      <a href="#products">Sản phẩm</a>
      <a href="#contact">Liên hệ</a>
      <a href="#cart">Giỏ hàng</a>
    </nav>
  </header>

  <section class="hero">
    <h2>Thời trang cho mọi phong cách</h2>
    <p>Khám phá bộ sưu tập mới nhất ngay hôm nay!</p>
  </section>

  <section id="products" class="products">
    <h2>Sản phẩm</h2>
    <div class="product-list">
      <div class="product">
        <img src="https://via.placeholder.com/200" alt="Áo sơ mi nam" />
        <h3>Áo sơ mi nam</h3>
        <p>Giá: 350,000đ</p>
        <button onclick="addToCart('Áo sơ mi nam', 350000)">Thêm vào giỏ</button>
      </div>
      <div class="product">
        <img src="https://via.placeholder.com/200" alt="Váy nữ" />
        <h3>Váy nữ</h3>
        <p>Giá: 420,000đ</p>
        <button onclick="addToCart('Váy nữ', 420000)">Thêm vào giỏ</button>
      </div>
    </div>
  </section>

  <section id="cart" class="cart">
    <h2>Giỏ hàng</h2>
    <ul id="cart-items"></ul>
    <p id="total">Tổng tiền: 0đ</p>
  </section>

  <section id="contact" class="contact">
    <h2>Liên hệ / Đặt hàng</h2>
    <form>
      <input type="text" placeholder="Tên của bạn" required />
      <input type="email" placeholder="Email" required />
      <textarea placeholder="Nội dung liên hệ..." required></textarea>
      <button type="submit">Gửi</button>
    </form>
  </section>

  <footer>
    <p>&copy; 2025 FashionStyle</p>
  </footer>

  <script src="script.js"></script>
</body>
</html>








body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

header {
  background-color: #222;
  color: #fff;
  padding: 1em;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

nav a {
  color: white;
  margin-left: 20px;
  text-decoration: none;
}

.hero {
  background-color: #eee;
  padding: 2em;
  text-align: center;
}

.products {
  padding: 2em;
}

.product-list {
  display: flex;
  gap: 2em;
}

.product {
  border: 1px solid #ccc;
  padding: 1em;
  width: 200px;
  text-align: center;
}

.cart {
  padding: 2em;
  background: #f9f9f9;
}

.contact {
  padding: 2em;
}

form input, form textarea {
  width: 100%;
  margin-bottom: 1em;
  padding: 0.5em;
}

button {
  padding: 0.5em 1em;
  background-color: #007bff;
  border: none;
  color: white;
  cursor: pointer;
}

footer {
  text-align: center;
  padding: 1em;
  background: #222;
  color: white;
}







let cart = [];

function addToCart(productName, price) {
  cart.push({ name: productName, price });
  renderCart();
}

function renderCart() {
  const cartItems = document.getElementById("cart-items");
  const total = document.getElementById("total");
  cartItems.innerHTML = "";
  let totalPrice = 0;
  cart.forEach((item) => {
    const li = document.createElement("li");
    li.textContent = `${item.name} - ${item.price.toLocaleString()}đ`;
    cartItems.appendChild(li);
    totalPrice += item.price;
  });
  total.textContent = `Tổng tiền: ${totalPrice.toLocaleString()}đ`;
}

