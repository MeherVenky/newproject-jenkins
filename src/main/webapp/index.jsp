<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>Éclat — Premium E‑Commerce</title>
    
    <!-- Fonts & Icons (Enhanced) -->
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&family=DM+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-deep: #0b0e17;
            --bg-elevated: #131725;
            --surface: #1a1f2e;
            --surface-light: #222838;
            --primary-accent: #5f7aff;
            --accent-glow: #7f9cff;
            --secondary-accent: #ff6b6b;
            --text-primary: #f0f3fa;
            --text-secondary: #9ba3bf;
            --text-muted: #6c748b;
            --border-glow: rgba(95, 122, 255, 0.2);
            --success: #2bc48a;
            --warning: #ffb347;
            --radius-sm: 12px;
            --radius-md: 20px;
            --radius-xl: 32px;
            --transition: all 0.3s cubic-bezier(0.2, 0.8, 0.4, 1);
        }

        body {
            background: var(--bg-deep);
            color: var(--text-primary);
            font-family: 'DM Sans', 'Inter', sans-serif;
            line-height: 1.5;
            scroll-behavior: smooth;
        }

        /* Glassmorphic header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(11, 14, 23, 0.85);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(95, 122, 255, 0.15);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 16px 0;
            gap: 20px;
            flex-wrap: wrap;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 700;
            font-size: 26px;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #ffffff, var(--primary-accent));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }
        .brand i {
            background: none;
            -webkit-background-clip: unset;
            background-clip: unset;
            color: var(--primary-accent);
            font-size: 28px;
        }

        nav.main-nav ul {
            display: flex;
            gap: 28px;
            list-style: none;
        }
        nav.main-nav a {
            font-weight: 500;
            font-size: 15px;
            transition: var(--transition);
            display: flex;
            align-items: center;
            gap: 8px;
            color: var(--text-secondary);
        }
        nav.main-nav a:hover, nav.main-nav a.active {
            color: var(--primary-accent);
            text-shadow: 0 0 8px rgba(95, 122, 255, 0.5);
        }

        .search {
            background: var(--surface);
            border-radius: 60px;
            padding: 10px 16px;
            display: flex;
            align-items: center;
            gap: 12px;
            border: 1px solid var(--border-glow);
            transition: var(--transition);
        }
        .search:focus-within {
            border-color: var(--primary-accent);
            box-shadow: 0 0 12px rgba(95, 122, 255, 0.3);
        }
        .search input {
            background: transparent;
            border: none;
            outline: none;
            color: white;
            width: 200px;
            font-size: 14px;
        }
        .search button {
            background: none;
            border: none;
            color: var(--text-secondary);
            cursor: pointer;
        }

        .header-actions {
            display: flex;
            gap: 18px;
            align-items: center;
        }
        .icon-btn {
            background: var(--surface);
            border-radius: 50%;
            width: 42px;
            height: 42px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            transition: var(--transition);
            color: var(--text-primary);
            font-size: 18px;
        }
        .icon-btn:hover {
            background: var(--primary-accent);
            transform: translateY(-2px);
        }
        .cart {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--secondary-accent);
            color: white;
            font-size: 11px;
            font-weight: bold;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Modern Hero */
        .hero {
            background: radial-gradient(ellipse at 30% 40%, rgba(95, 122, 255, 0.2), transparent 70%), var(--bg-deep);
            padding: 80px 0;
            border-bottom: 1px solid var(--border-glow);
        }
        .hero-content {
            max-width: 680px;
        }
        .hero-badge {
            background: rgba(95, 122, 255, 0.2);
            backdrop-filter: blur(4px);
            padding: 6px 14px;
            border-radius: 60px;
            display: inline-block;
            font-size: 13px;
            margin-bottom: 24px;
            border: 1px solid rgba(95, 122, 255, 0.4);
        }
        .hero h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 56px;
            line-height: 1.1;
            margin-bottom: 24px;
            background: linear-gradient(to right, #fff, var(--accent-glow));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }
        .btn-group {
            display: flex;
            gap: 18px;
            margin-top: 32px;
        }
        .btn {
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            border: none;
            cursor: pointer;
            transition: var(--transition);
            font-family: inherit;
        }
        .btn-primary {
            background: var(--primary-accent);
            color: white;
            box-shadow: 0 8px 20px rgba(95, 122, 255, 0.3);
        }
        .btn-primary:hover {
            background: var(--accent-glow);
            transform: translateY(-3px);
            box-shadow: 0 15px 30px rgba(95, 122, 255, 0.4);
        }
        .btn-outline {
            background: transparent;
            border: 1.5px solid var(--primary-accent);
            color: var(--text-primary);
        }
        .btn-outline:hover {
            background: rgba(95, 122, 255, 0.1);
            transform: translateY(-2px);
        }

        /* Section headers */
        .section-header {
            text-align: center;
            margin-bottom: 48px;
        }
        .section-header h2 {
            font-size: 36px;
            font-family: 'Space Grotesk', sans-serif;
        }
        .section-header p {
            color: var(--text-secondary);
            margin-top: 12px;
        }

        /* Categories grid - glass cards */
        .grid-categories {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
            gap: 24px;
        }
        .cat-card {
            background: var(--surface);
            backdrop-filter: blur(4px);
            border-radius: var(--radius-md);
            padding: 28px 16px;
            text-align: center;
            transition: var(--transition);
            border: 1px solid var(--border-glow);
            cursor: pointer;
        }
        .cat-card:hover {
            transform: translateY(-8px);
            background: var(--surface-light);
            border-color: var(--primary-accent);
            box-shadow: 0 20px 30px -12px rgba(0, 0, 0, 0.5);
        }
        .cat-card .icon {
            font-size: 40px;
            color: var(--primary-accent);
            margin-bottom: 16px;
        }

        /* Products grid - modern neomorphic */
        .grid-products {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 28px;
        }
        .product-card {
            background: var(--surface);
            border-radius: var(--radius-md);
            overflow: hidden;
            transition: var(--transition);
            border: 1px solid rgba(95, 122, 255, 0.1);
        }
        .product-card:hover {
            transform: translateY(-6px);
            border-color: var(--primary-accent);
            box-shadow: 0 25px 35px -12px rgba(0, 0, 0, 0.4);
        }
        .product-img {
            height: 260px;
            overflow: hidden;
            position: relative;
        }
        .product-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }
        .product-card:hover .product-img img {
            transform: scale(1.05);
        }
        .badge {
            position: absolute;
            top: 16px;
            left: 16px;
            background: var(--secondary-accent);
            padding: 5px 12px;
            border-radius: 60px;
            font-size: 12px;
            font-weight: bold;
        }
        .product-info {
            padding: 20px;
        }
        .price {
            font-size: 22px;
            font-weight: 700;
            color: var(--primary-accent);
        }
        .old-price {
            text-decoration: line-through;
            color: var(--text-muted);
            font-size: 14px;
            margin-left: 8px;
        }
        .rating {
            color: #f5b042;
            letter-spacing: 2px;
        }
        .add-cart-btn {
            width: 100%;
            background: var(--primary-accent);
            border: none;
            padding: 12px;
            border-radius: 40px;
            font-weight: 600;
            color: white;
            margin-top: 16px;
            transition: var(--transition);
            cursor: pointer;
        }
        .add-cart-btn:hover {
            background: var(--accent-glow);
        }

        /* Flash sale banner */
        .flash-sale {
            background: linear-gradient(135deg, #1e1b3a, #0b0e17);
            border-radius: var(--radius-xl);
            padding: 48px;
            margin: 60px auto;
            border: 1px solid var(--border-glow);
            position: relative;
            overflow: hidden;
        }
        .flash-sale:before {
            content: '';
            position: absolute;
            top: -50%;
            left: -20%;
            width: 140%;
            height: 200%;
            background: radial-gradient(circle, rgba(95,122,255,0.1) 0%, transparent 70%);
        }
        .deal-grid {
            display: flex;
            gap: 48px;
            align-items: center;
            flex-wrap: wrap;
        }
        .deal-img {
            flex: 1;
            border-radius: 32px;
            overflow: hidden;
        }
        .deal-img img {
            width: 100%;
            height: 300px;
            object-fit: cover;
        }
        .deal-content {
            flex: 1;
        }
        .timer {
            display: flex;
            gap: 16px;
            margin: 24px 0;
        }
        .time-card {
            background: rgba(0, 0, 0, 0.5);
            backdrop-filter: blur(12px);
            padding: 16px 20px;
            border-radius: 20px;
            text-align: center;
            min-width: 80px;
        }
        .time-card span:first-child {
            font-size: 32px;
            font-weight: 800;
            font-family: monospace;
        }

        /* testimonials */
        .testimonial-grid {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding: 8px 4px 20px;
        }
        .testimonial-card {
            background: var(--surface);
            border-radius: 28px;
            padding: 28px;
            min-width: 340px;
            border: 1px solid var(--border-glow);
        }
        /* newsletter */
        .newsletter-modern {
            background: var(--surface-light);
            border-radius: 48px;
            padding: 56px 32px;
            text-align: center;
            margin: 40px 0;
        }
        .newsletter-form {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
            margin-top: 24px;
        }
        .newsletter-form input {
            background: var(--bg-deep);
            border: 1px solid var(--border-glow);
            padding: 14px 24px;
            border-radius: 60px;
            width: 320px;
            color: white;
        }
        footer {
            border-top: 1px solid var(--border-glow);
            padding: 48px 0 32px;
            margin-top: 48px;
        }
        @media (max-width: 780px) {
            .header-inner { flex-direction: column; }
            nav.main-nav ul { gap: 16px; flex-wrap: wrap; justify-content: center; }
            .hero h1 { font-size: 38px; }
        }
        @media (max-width: 640px) {
            .grid-products { grid-template-columns: 1fr; }
        }
        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 24px;
            color: white;
        }
        @media (max-width: 900px) {
            .main-nav { display: none; }
            .mobile-toggle { display: block; }
        }
        #mobileMenu {
            background: var(--bg-elevated);
            padding: 20px;
            border-bottom: 1px solid var(--border-glow);
        }
        .glow-text {
            text-shadow: 0 0 12px rgba(95, 122, 255, 0.4);
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 20px;">
            <button class="mobile-toggle" id="mobileToggleBtn"><i class="fas fa-bars"></i></button>
            <div class="brand">
                <i class="fas fa-gem"></i>
                <span>ÉCLAT</span>
            </div>
        </div>
        <nav class="main-nav">
            <ul>
                <li><a href="#" class="active"><i class="fas fa-compass"></i> Explore</a></li>
                <li><a href="#"><i class="fas fa-bolt"></i> New Drops</a></li>
                <li><a href="#deals"><i class="fas fa-percent"></i> Flash Sale</a></li>
                <li><a href="#"><i class="fas fa-crown"></i> Luxury</a></li>
            </ul>
        </nav>
        <div style="display: flex; gap: 16px; align-items: center;">
            <div class="search">
                <input type="text" id="globalSearch" placeholder="Search products...">
                <button id="searchTrigger"><i class="fas fa-search"></i></button>
            </div>
            <div class="header-actions">
                <a href="#" class="icon-btn"><i class="far fa-heart"></i></a>
                <div class="cart icon-btn" id="cartIcon">
                    <i class="fas fa-bag-shopping"></i>
                    <span class="cart-count" id="cartCounter">0</span>
                </div>
            </div>
        </div>
    </div>
    <div id="mobileMenuPanel" style="display: none;">
        <div class="container" style="padding: 16px 0;">
            <ul style="list-style: none; display: flex; flex-direction: column; gap: 14px;">
                <li><a href="#">Home</a></li>
                <li><a href="#">Categories</a></li>
                <li><a href="#deals">Deals</a></li>
                <li><a href="#">Wishlist</a></li>
            </ul>
        </div>
    </div>
</header>

<main>
    <!-- Hero Section -->
    <section class="hero">
        <div class="container hero-content">
            <div class="hero-badge"><i class="fas fa-fire"></i> Limited Edition Collection</div>
            <h1>Elevate your <br>everyday style</h1>
            <p style="font-size: 18px; color: var(--text-secondary); max-width: 540px;">Unlock premium craftsmanship, exclusive drops, and next‑gen electronics. Free worldwide shipping on orders over $150.</p>
            <div class="btn-group">
                <button class="btn btn-primary" id="shopNowHero"><i class="fas fa-arrow-right"></i> Shop Now</button>
                <button class="btn btn-outline" id="discoverBtn">Discover</button>
            </div>
        </div>
    </section>

    <!-- Categories Section (Glow-up) -->
    <div class="container">
        <div class="section-header">
            <h2>Curated Collections</h2>
            <p>Explore by category — luxury meets performance</p>
        </div>
        <div class="grid-categories" id="categoriesContainer"></div>
    </div>

    <!-- Trending Products -->
    <div class="container" style="margin-top: 70px;">
        <div class="section-header">
            <h2>Editor’s Picks</h2>
            <p>Most wanted this season</p>
        </div>
        <div class="grid-products" id="productsGrid"></div>
    </div>

    <!-- Flash Sale Deal Redesign -->
    <div class="container" id="deals">
        <div class="flash-sale">
            <div class="deal-grid">
                <div class="deal-img">
                    <img src="https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=800&q=80" alt="Luxury Deal">
                </div>
                <div class="deal-content">
                    <span class="hero-badge" style="background: #ff6b6b20;"><i class="fas fa-clock"></i> FLASH SALE</span>
                    <h2 style="font-size: 38px; margin-top: 12px;">Sony WH-1000XM5</h2>
                    <p style="color: var(--text-secondary);">Noise cancellation, premium sound, and 30h battery life.</p>
                    <div class="timer" id="dealTimer">
                        <div class="time-card"><span id="days">00</span><br>Days</div>
                        <div class="time-card"><span id="hours">00</span><br>Hrs</div>
                        <div class="time-card"><span id="minutes">00</span><br>Mins</div>
                        <div class="time-card"><span id="seconds">00</span><br>Sec</div>
                    </div>
                    <div style="display: flex; gap: 16px; align-items: baseline; margin-bottom: 20px;">
                        <span class="price" style="font-size: 36px;">$299</span>
                        <span class="old-price" style="font-size: 22px;">$449</span>
                        <span class="badge" style="background: #ff6b6b; position: relative;">-33%</span>
                    </div>
                    <button class="btn btn-primary" id="flashDealBtn"><i class="fas fa-bolt"></i> Claim Deal</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Testimonials -->
    <div class="container">
        <div class="section-header">
            <h2>Voices of Éclat</h2>
            <p>Join 10,000+ happy customers</p>
        </div>
        <div class="testimonial-grid" id="testimonialList"></div>
    </div>

    <!-- Newsletter Modern -->
    <div class="container">
        <div class="newsletter-modern">
            <i class="fas fa-envelope-open-text" style="font-size: 48px; color: var(--primary-accent);"></i>
            <h3 style="font-size: 28px; margin-top: 12px;">Exclusive access</h3>
            <p>Get 15% off your first order + early sale notifications.</p>
            <form class="newsletter-form" id="newsletterForm" onsubmit="return false;">
                <input type="email" id="newsEmail" placeholder="Your email address" required>
                <button class="btn btn-primary" id="subscribeBtnNews">Subscribe <i class="fas fa-paper-plane"></i></button>
            </form>
            <div id="newsMsg" style="margin-top: 16px; font-size: 14px;"></div>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 32px;">
        <div>
            <div class="brand" style="font-size: 22px;"><i class="fas fa-gem"></i> ÉCLAT</div>
            <p style="color: var(--text-muted); margin-top: 12px;">Redefining modern e‑commerce <br>with elegance & speed.</p>
        </div>
        <div style="display: flex; gap: 56px;">
            <div><h4>Explore</h4><div style="color: var(--text-muted);">New Arrivals<br>Best Sellers<br>Gift Cards</div></div>
            <div><h4>Support</h4><div style="color: var(--text-muted);">Help Center<br>Returns<br>Track Order</div></div>
        </div>
    </div>
    <div class="container" style="text-align: center; margin-top: 48px; color: var(--text-muted);">© 2026 ÉCLAT — all rights reserved.</div>
</footer>

<script>
    // ---- DATABASE ----
    const CATEGORIES = [
        { id: 'wear', name: 'Streetwear', icon: 'fa-vest' },
        { id: 'audio', name: 'Audio Gear', icon: 'fa-headphones' },
        { id: 'gadgets', name: 'Gadgets', icon: 'fa-microchip' },
        { id: 'watches', name: 'Luxury Watches', icon: 'fa-clock' },
        { id: 'shoes', name: 'Sneakers', icon: 'fa-shoe-prints' },
        { id: 'beauty', name: 'Beauty', icon: 'fa-spa' }
    ];

    const PRODUCTS = [
        { id: 101, title: "Aether Smartwatch", price: 349, oldPrice: 499, rating: 5, reviews: 214, img: "https://images.unsplash.com/photo-1579586337278-3befd40fd17a?auto=format&fit=crop&w=600&q=80", category: "watches", badge: "Trending" },
        { id: 102, title: "Nova Pro Headphones", price: 199, oldPrice: 299, rating: 4.8, reviews: 872, img: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80", category: "audio", badge: "-33%" },
        { id: 103, title: "Urban Hoodie", price: 89, rating: 4.5, reviews: 346, img: "https://images.unsplash.com/photo-1556905055-8f358a7a47b2?auto=format&fit=crop&w=600&q=80", category: "wear" },
        { id: 104, title: "AirFly Max", price: 129, oldPrice: 189, rating: 4.9, reviews: 502, img: "https://images.unsplash.com/photo-1606220588913-b3aacb4d2f46?auto=format&fit=crop&w=600&q=80", category: "gadgets", badge: "Sale" },
        { id: 105, title: "Minimalist Backpack", price: 79, rating: 4.7, reviews: 223, img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80", category: "wear" },
        { id: 106, title: "Glow Serum Set", price: 58, oldPrice: 86, rating: 5, reviews: 167, img: "https://images.unsplash.com/photo-1596462502278-27bfdc403348?auto=format&fit=crop&w=600&q=80", category: "beauty" },
    ];

    // cart state
    let cartTotal = 0;
    function updateCartUI() {
        document.getElementById('cartCounter').innerText = cartTotal;
    }
    function addToCartById(productId) {
        cartTotal++;
        updateCartUI();
        alert(`✨ Item added to cart! Total items: ${cartTotal}`);
    }

    // Render categories
    function renderCategories() {
        const container = document.getElementById('categoriesContainer');
        container.innerHTML = CATEGORIES.map(cat => `
            <div class="cat-card" data-cat="${cat.name}">
                <div class="icon"><i class="fas ${cat.icon}"></i></div>
                <h4>${cat.name}</h4>
                <div style="font-size:13px; margin-top:6px; opacity:0.7">Shop Now →</div>
            </div>
        `).join('');
        document.querySelectorAll('.cat-card').forEach(el => {
            el.addEventListener('click', () => {
                const catName = el.getAttribute('data-cat');
                document.getElementById('globalSearch').value = catName;
                filterProductsByQuery(catName);
            });
        });
    }

    function renderProducts(productsArray) {
        const grid = document.getElementById('productsGrid');
        grid.innerHTML = productsArray.map(p => `
            <div class="product-card">
                <div class="product-img">
                    <img src="${p.img}" alt="${p.title}">
                    ${p.badge ? `<div class="badge">${p.badge}</div>` : ''}
                </div>
                <div class="product-info">
                    <h4>${p.title}</h4>
                    <div class="rating">${'★'.repeat(Math.floor(p.rating))}${p.rating % 1 ? '½' : ''} <span style="color:var(--text-muted)">(${p.reviews})</span></div>
                    <div style="margin: 12px 0;">
                        <span class="price">$${p.price}</span>
                        ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}
                    </div>
                    <button class="add-cart-btn" data-id="${p.id}"><i class="fas fa-shopping-cart"></i> Add to cart</button>
                </div>
            </div>
        `).join('');
        document.querySelectorAll('.add-cart-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.dataset.id);
                addToCartById(id);
                const originalHTML = btn.innerHTML;
                btn.innerHTML = '<i class="fas fa-check"></i> Added';
                setTimeout(() => btn.innerHTML = originalHTML, 1200);
            });
        });
    }

    function filterProductsByQuery(query) {
        if (!query.trim()) { renderProducts(PRODUCTS); return; }
        const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(query.toLowerCase()) || p.category.toLowerCase().includes(query.toLowerCase()));
        renderProducts(filtered);
    }

    // Flash Sale Timer (ends in 2 days approx)
    function initDealTimer() {
        const endTime = new Date().getTime() + (48 * 60 * 60 * 1000) + (3 * 60 * 60 * 1000); // 51h
        function tick() {
            const now = new Date().getTime();
            const diff = endTime - now;
            if (diff <= 0) { clearInterval(interval); return; }
            const days = Math.floor(diff / (1000 * 60 * 60 * 24));
            const hours = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('days').innerText = days;
            document.getElementById('hours').innerText = String(hours).padStart(2,'0');
            document.getElementById('minutes').innerText = String(mins).padStart(2,'0');
            document.getElementById('seconds').innerText = String(secs).padStart(2,'0');
        }
        tick(); const interval = setInterval(tick, 1000);
    }

    // Testimonials
    const TESTIMONIALS = [
        { name: "Olivia Chen", text: "Absolutely in love with the quality! Shipping was faster than expected.", rating: 5, avatar: "https://randomuser.me/api/portraits/women/68.jpg" },
        { name: "Marcus Ray", text: "Best e‑commerce experience. The UI is stunning and products are premium.", rating: 5, avatar: "https://randomuser.me/api/portraits/men/32.jpg" }
    ];
    function renderTestimonials() {
        const cont = document.getElementById('testimonialList');
        cont.innerHTML = TESTIMONIALS.map(t => `
            <div class="testimonial-card">
                <div class="rating">${'★'.repeat(t.rating)}</div>
                <p style="margin: 12px 0;">“${t.text}”</p>
                <div style="display: flex; align-items: center; gap: 12px; margin-top: 12px;">
                    <img src="${t.avatar}" style="width: 44px; height: 44px; border-radius: 50%; object-fit: cover;">
                    <div><strong>${t.name}</strong><br><span style="color: var(--text-muted);">Verified buyer</span></div>
                </div>
            </div>
        `).join('');
    }

    // NewsLetter
    document.getElementById('newsletterForm').addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsEmail').value.trim();
        const msgDiv = document.getElementById('newsMsg');
        if (!email || !email.includes('@')) { msgDiv.style.color = '#ff9f9f'; msgDiv.innerText = 'Valid email needed.'; return; }
        msgDiv.style.color = '#2bc48a'; msgDiv.innerText = '🎉 Thanks! Your 15% code: ECLAT15';
        document.getElementById('newsEmail').value = '';
        setTimeout(() => msgDiv.innerText = '', 3000);
    });

    // search events
    document.getElementById('searchTrigger').addEventListener('click', () => filterProductsByQuery(document.getElementById('globalSearch').value));
    document.getElementById('globalSearch').addEventListener('keypress', (e) => { if(e.key === 'Enter') filterProductsByQuery(e.target.value); });

    // UI event handlers
    document.getElementById('shopNowHero').addEventListener('click', () => document.getElementById('productsGrid').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('discoverBtn').addEventListener('click', () => document.querySelector('.grid-categories').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('flashDealBtn').addEventListener('click', () => { cartTotal++; updateCartUI(); alert('🔥 Flash deal added to cart!'); });

    // Mobile toggle
    const toggleBtn = document.getElementById('mobileToggleBtn');
    const menuPanel = document.getElementById('mobileMenuPanel');
    toggleBtn.addEventListener('click', () => { menuPanel.style.display = menuPanel.style.display === 'none' ? 'block' : 'none'; });

    // INITIALIZE
    renderCategories();
    renderProducts(PRODUCTS);
    renderTestimonials();
    initDealTimer();
    updateCartUI();
    // Close mobile menu on link click
    document.querySelectorAll('#mobileMenuPanel a').forEach(link => link.addEventListener('click', () => menuPanel.style.display = 'none'));
</script>
</body>
</html>
