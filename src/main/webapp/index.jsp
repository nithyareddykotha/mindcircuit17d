

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Nivam Restaurant | Food Delivery</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background: #f8f8f8;
    color: #282c3f;
}

header {
    background: white;
    padding: 16px 7%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 2px 10px #ddd;
    position: sticky;
    top: 0;
    z-index: 10;
    gap: 15px;
}

.logo {
    font-size: 27px;
    font-weight: bold;
    color: #fc8019;
}

.logo span {
    color: #282c3f;
}

header button {
    background: #fc8019;
    color: white;
    border: none;
    padding: 12px 20px;
    border-radius: 8px;
    cursor: pointer;
    font-weight: bold;
}

.hero {
    padding: 55px 7%;
    background: linear-gradient(120deg, #fff0df, #fff9f2);
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 25px;
}

.hero h1 {
    font-size: clamp(30px, 4vw, 48px);
    margin-bottom: 15px;
}

.hero h1 span {
    color: #fc8019;
}

.hero p {
    color: #686b78;
    line-height: 1.7;
    margin-bottom: 22px;
}

.hero img {
    width: 42%;
    max-height: 290px;
    object-fit: cover;
    border-radius: 25px;
}

.search-area {
    padding: 25px 7%;
}

.search-area input {
    width: 100%;
    padding: 16px;
    border: 1px solid #ddd;
    border-radius: 10px;
    font-size: 16px;
    outline-color: #fc8019;
}

h2 {
    margin-bottom: 22px;
}

.categories {
    display: flex;
    gap: 12px;
    flex-wrap: wrap;
    margin-bottom: 30px;
}

.categories button {
    border: 1px solid #ddd;
    padding: 11px 18px;
    border-radius: 25px;
    background: white;
    cursor: pointer;
}

.categories button.active,
.categories button:hover {
    background: #fc8019;
    color: white;
    border-color: #fc8019;
}

.menu-section {
    padding: 10px 7% 50px;
}

.menu {
    display: grid;
    grid-template-columns: repeat(4, minmax(0, 1fr));
    gap: 22px;
}

.food-card {
    background: white;
    border-radius: 15px;
    overflow: hidden;
    box-shadow: 0 3px 12px #0000000d;
    transition: transform 0.2s;
}

.food-card:hover {
    transform: translateY(-5px);
}

.food-card img {
    width: 100%;
    height: 180px;
    object-fit: cover;
    background: #eee;
}

.food-info {
    padding: 15px;
}

.food-info h3 {
    font-size: 17px;
    margin-bottom: 9px;
}

.food-info p {
    color: #777;
    font-size: 13px;
    line-height: 1.5;
    min-height: 38px;
}

.food-bottom {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 15px;
    gap: 8px;
}

.price {
    font-size: 17px;
    font-weight: bold;
}

.add-btn {
    border: 1px solid #fc8019;
    color: #fc8019;
    background: white;
    border-radius: 7px;
    padding: 9px 13px;
    font-weight: bold;
    cursor: pointer;
}

.add-btn:hover {
    background: #fc8019;
    color: white;
}

.cart-section {
    margin: 0 7% 45px;
    padding: 25px;
    background: white;
    border-radius: 15px;
    box-shadow: 0 3px 12px #0000000d;
}

.cart-item {
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 10px;
    padding: 13px 0;
    border-bottom: 1px solid #eee;
}

.quantity button {
    padding: 5px 10px;
    background: #fff0df;
    color: #fc8019;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-weight: bold;
}

.total {
    text-align: right;
    margin-top: 22px;
    font-size: 21px;
    font-weight: bold;
}

.checkout {
    margin-top: 18px;
    width: 100%;
    padding: 15px;
    background: #fc8019;
    color: white;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
}

.empty {
    color: #888;
    padding: 10px 0;
}

footer {
    text-align: center;
    padding: 30px 15px;
    background: #282c3f;
    color: white;
    line-height: 1.8;
}

footer span {
    color: #fc8019;
}

@media (max-width: 1000px) {
    .menu {
        grid-template-columns: repeat(3, minmax(0, 1fr));
    }
}

@media (max-width: 700px) {
    header {
        padding: 15px 5%;
    }

    .hero {
        padding: 35px 5%;
    }

    .hero img {
        width: 40%;
        max-height: 190px;
    }

    .menu {
        grid-template-columns: repeat(2, minmax(0, 1fr));
        gap: 13px;
    }

    .menu-section,
    .search-area {
        padding-left: 5%;
        padding-right: 5%;
    }

    .cart-section {
        margin-left: 5%;
        margin-right: 5%;
    }

    .food-card img {
        height: 135px;
    }

    .food-info {
        padding: 11px;
    }
}

@media (max-width: 400px) {
    .hero img {
        display: none;
    }

    .menu {
        grid-template-columns: 1fr;
    }

    .food-card img {
        height: 200px;
    }
}
</style>
</head>

<body>

<header>
    <div class="logo">Nivam <span>Restaurant</span></div>
    <button onclick="document.getElementById('cart').scrollIntoView({behavior:'smooth'})">
        🛒 Cart (<span id="cart-count">0</span>)
    </button>
</header>

<section class="hero">
    <div>
        <h1>Good food.<br><span>Good mood.</span></h1>
        <p>Discover delicious meals made with love.<br>
        Fresh flavours delivered to your table.</p>
        <button onclick="document.getElementById('menu').scrollIntoView({behavior:'smooth'})">
            Explore Menu ↓
        </button>
    </div>

    <img
        src="https://images.unsplash.com/photo-1546549032-9571cd6b27df?auto=format&fit=crop&w=900&q=80"
        alt="Delicious restaurant meal">
</section>

<section class="search-area">
    <input
        type="text"
        id="search"
        placeholder="🔍 Search biryani, pizza, dosa..."
        oninput="renderMenu()">
</section>

<section class="menu-section" id="menu">
    <h2>Explore Our Menu 🍽️</h2>

    <div class="categories">
        <button class="active" onclick="setCategory('All', this)">All</button>
        <button onclick="setCategory('Biryani', this)">🍚 Biryani</button>
        <button onclick="setCategory('South Indian', this)">🥞 South Indian</button>
        <button onclick="setCategory('Pizza', this)">🍕 Pizza</button>
        <button onclick="setCategory('Burgers', this)">🍔 Burgers</button>
        <button onclick="setCategory('Desserts', this)">🍰 Desserts</button>
        <button onclick="setCategory('Drinks', this)">🥤 Drinks</button>
    </div>

    <div class="menu" id="food-menu"></div>
</section>

<section class="cart-section" id="cart">
    <h2>🛒 Your Cart</h2>
    <div id="cart-items">
        <p class="empty">Your cart is empty. Add something delicious!</p>
    </div>
    <div class="total">Total: ₹<span id="total">0</span></div>
    <button class="checkout" onclick="checkout()">Proceed to Checkout</button>
</section>

<footer>
    <h2><span>Nivam</span> Restaurant</h2>
    <p>Fresh food, happy hearts ❤️</p>
    <p>© 2026 Nivam Restaurant. All rights reserved.</p>
</footer>

<script>
const foods = [
    {
        id: 1,
        name: "Chicken Dum Biryani",
        category: "Biryani",
        price: 249,
        description: "Aromatic basmati rice with spicy chicken.",
        image: "photo-1563379091339-03246963d96c"
    },
    {
        id: 2,
        name: "Veg Biryani",
        category: "Biryani",
        price: 179,
        description: "Flavourful rice cooked with fresh vegetables.",
        image: "photo-1512058564366-18510be2db19"
    },
    {
        id: 3,
        name: "Paneer Biryani",
        category: "Biryani",
        price: 219,
        description: "Spiced basmati rice with tender paneer.",
        image: "photo-1631452180519-c014fe946bc7"
    },
    {
        id: 4,
        name: "Masala Dosa",
        category: "South Indian",
        price: 99,
        description: "Crispy dosa with potato masala and chutney.",
        image: "photo-1668236543090-82eba5ee5976"
    },
    {
        id: 5,
        name: "Idli Sambar",
        category: "South Indian",
        price: 69,
        description: "Soft steamed idlis with hot sambar.",
        image: "photo-1589301760014-d929f3979dbc"
    },
    {
        id: 6,
        name: "Margherita Pizza",
        category: "Pizza",
        price: 199,
        description: "Classic pizza with cheese and tomato.",
        image: "photo-1574071318508-1cdbab80d002"
    },
    {
        id: 7,
        name: "Farmhouse Pizza",
        category: "Pizza",
        price: 299,
        description: "Loaded with vegetables and melted cheese.",
        image: "photo-1513104890138-7c749659a591"
    },
    {
        id: 8,
        name: "Classic Burger",
        category: "Burgers",
        price: 129,
        description: "Juicy burger with lettuce and special sauce.",
        image: "photo-1568901346375-23c9450c58cd"
    },
    {
        id: 9,
        name: "Cheese Burger",
        category: "Burgers",
        price: 169,
        description: "Cheesy burger with a delicious patty.",
        image: "photo-1553979459-d2229ba7433a"
    },
    {
        id: 10,
        name: "Chocolate Cake",
        category: "Desserts",
        price: 119,
        description: "Rich chocolate cake for sweet cravings.",
        image: "photo-1578985545062-69928b1d9587"
    },
    {
        id: 11,
        name: "Ice Cream",
        category: "Desserts",
        price: 79,
        description: "A cool and creamy dessert.",
        image: "photo-1563805042-7684c019e1cb"
    },
    {
        id: 12,
        name: "Cold Coffee",
        category: "Drinks",
        price: 99,
        description: "Chilled coffee with a creamy finish.",
        image: "photo-1461023058943-07fcbe16d735"
    }
];

let selectedCategory = "All";
let cart = {};

function imageUrl(id) {
    return `https://images.unsplash.com/${id}?auto=format&fit=crop&w=600&q=80`;
}

function setCategory(category, button) {
    selectedCategory = category;

    document.querySelectorAll(".categories button").forEach(btn => {
        btn.classList.remove("active");
    });

    button.classList.add("active");
    renderMenu();
}

function renderMenu() {
    const search = document.getElementById("search").value.toLowerCase();

    const filtered = foods.filter(food =>
        (selectedCategory === "All" || food.category === selectedCategory) &&
        food.name.toLowerCase().includes(search)
    );

    const menu = document.getElementById("food-menu");

    if (filtered.length === 0) {
        menu.innerHTML = "<p>No food items found. Try another search.</p>";
        return;
    }

    menu.innerHTML = filtered.map(food => `
        <article class="food-card">
            <img
                src="${imageUrl(food.image)}"
                alt="${food.name}"
                loading="lazy"
                onerror="this.onerror=null;this.src='https://placehold.co/600x400?text=Food+Image';">

            <div class="food-info">
                <h3>${food.name}</h3>
                <p>${food.description}</p>

                <div class="food-bottom">
                    <span class="price">₹${food.price}</span>
                    <button class="add-btn" onclick="addToCart(${food.id})">
                        ${cart[food.id] ? "Added ✓" : "ADD +"}
                    </button>
                </div>
            </div>
        </article>
    `).join("");
}

function addToCart(id) {
    cart[id] = (cart[id] || 0) + 1;
    renderMenu();
    renderCart();
}

function changeQuantity(id, change) {
    cart[id] += change;

    if (cart[id] <= 0) {
        delete cart[id];
    }

    renderMenu();
    renderCart();
}

function renderCart() {
    const cartItems = document.getElementById("cart-items");
    const entries = Object.entries(cart);

    const count = entries.reduce((sum, [id, qty]) => sum + qty, 0);
    const total = entries.reduce((sum, [id, qty]) => {
        const food = foods.find(item => item.id === Number(id));
        return sum + food.price * qty;
    }, 0);

    document.getElementById("cart-count").textContent = count;
    document.getElementById("total").textContent = total;

    if (entries.length === 0) {
        cartItems.innerHTML =
            '<p class="empty">Your cart is empty. Add something delicious!</p>';
        return;
    }

    cartItems.innerHTML = entries.map(([id, qty]) => {
        const food = foods.find(item => item.id === Number(id));

        return `
            <div class="cart-item">
                <div>
                    <strong>${food.name}</strong><br>
                    ₹${food.price} × ${qty} = ₹${food.price * qty}
                </div>

                <div class="quantity">
                    <button onclick="changeQuantity(${id}, -1)">−</button>
                    <span>${qty}</span>
                    <button onclick="changeQuantity(${id}, 1)">+</button>
                </div>
            </div>
        `;
    }).join("");
}

function checkout() {
    if (Object.keys(cart).length === 0) {
        alert("Please add food items to your cart first!");
        return;
    }

    const total = Object.entries(cart).reduce((sum, [id, qty]) => {
        const food = foods.find(item => item.id === Number(id));
        return sum + food.price * qty;
    }, 0);

    alert(
        "Thank you for choosing Nivam Restaurant!\n" +
        "Your order total is ₹" + total +
        "\nThis is a demo. Online ordering is not connected yet."
    );
}

renderMenu();
renderCart();
</script>

</body>
</html>
