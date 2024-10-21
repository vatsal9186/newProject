<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="fruits.aspx.cs" Inherits="newProject.fruits" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br /><br />
    <!-- products Items Start -->
<div class="row product-lists">
    <div class="col-lg-4 col-md-6 text-center strawberry">
        <div class="single-product-item">
            <div class="product-image">
                <a href="singleproduct.aspx"><img src="assets/img/products/product-img-1.jpg" alt=""></a>
            </div>
            <h3>Strawberry</h3>
            <p class="product-price"><span>Per Kg</span> 85₹ </p>
            <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 text-center berry">
        <div class="single-product-item">
            <div class="product-image">
                <a href="singleproduct.aspx"><img src="assets/img/products/product-img-2.jpg" alt=""></a>
            </div>
            <h3>Berry</h3>
            <p class="product-price"><span>Per Kg</span> 70₹ </p>
            <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 text-center lemon">
        <div class="single-product-item">
            <div class="product-image">
                <a href="singleproduct.aspx"><img src="assets/img/products/pineple2.jpg" alt=""></a>
            </div>
            <h3>Pineple</h3>
            <p class="product-price"><span>Per Kg</span> 35₹ </p>
            <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 text-center">
        <div class="single-product-item">
            <div class="product-image">
                <a href="singleproduct.aspx"><img src="assets/img/products/product-img-4.jpg" alt=""></a>
            </div>
            <h3>Avocado</h3>
            <p class="product-price"><span>Per Kg</span> 50₹ </p>
            <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 text-center">
        <div class="single-product-item">
            <div class="product-image">
                <a href="singleproduct.aspx"><img src="assets/img/products/product-img-5.jpg" alt=""></a>
            </div>
            <h3>Green Apple</h3>
            <p class="product-price"><span>Per Kg</span> 45₹ </p>
            <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 text-center strawberry">
        <div class="single-product-item">
            <div class="product-image">
                <a href="singleproduct.aspx"><img src="assets/img/products/watermelon.jpg" alt=""></a>
            </div>
            <h3>Watermelon</h3>
            <p class="product-price"><span>Per Kg</span> 80₹ </p>
            <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
        </div>
    </div>
</div>


<div class="row product-lists">
    <div class="col-lg-4 col-md-6 text-center strawberry">
        <div class="single-product-item">
            <div class="product-image">
                <!-- <a href="single-product.html"><img src="assets/img/products/product-img-1.jpg" alt=""></a> -->
                <a href="singleproduct.aspx"><img src="assets/img/products/mango1.jpg" alt=""></a>
            </div>
            <h3>Mango</h3>
            <p class="product-price"><span>Per Kg</span> 100₹ </p>
            <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 text-center berry">
        <div class="single-product-item">
            <div class="product-image">
                <a href="singleproduct.aspx"><img src="assets/img/products/banana.jpg" alt=""></a>
            </div>
            <h3>Banana</h3>
            <p class="product-price"><span>Per Kg</span> 70₹ </p>
            <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 text-center lemon">
        <div class="single-product-item">
            <div class="product-image">
                <a href="singleproduct.aspx"><img src="assets/img/products/dragonF.jpg" alt=""></a>
            </div>
            <h3>Dragon Fruit</h3>
            <p class="product-price"><span>Per Kg</span> 35₹ </p>
            <a href="cart.aspx" class="cart-btn"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
        </div>
    </div>
</div>

    		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="pagination-wrap">
					<ul>
						<%--<li><a href="">Prev</a></li>--%>
						<!-- <li><a href="#">1</a></li> -->
						<li><a class="active" href="fruit.aspx">1</a></li>
						<li><a class="" href="fruit2.aspx">2</a></li>
						<!-- <li><a href="#">3</a></li> -->
						<%--<li><a href="#">Next</a></li>--%>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>



<!-- <div class="row">
    <div class="col-lg-12 text-center">
        <div class="pagination-wrap">
            <ul>
                <li><a href="#">Prev</a></li>
                <li><a href="#">1</a></li>
                <li><a class="active" href="#">1</a></li>
                <li><a class="active2" href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">Next</a></li>
            </ul>
        </div>
    </div>
</div>
</div>
</div> -->
<!-- end products -->

</asp:Content>
