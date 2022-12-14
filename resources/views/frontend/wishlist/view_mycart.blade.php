@extends('frontend.main_master')
@section('title')
    Trang giỏ hàng của bạn
@endsection


@section('content')
<div class="breadcrumb">
	<div class="container">
		<div class="breadcrumb-inner">
			<ul class="list-inline list-unstyled">
				<li><a href="home.html">Home</a></li>
				<li class='active'>Giỏ hàng</li>
			</ul>
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content">
	<div class="container">
        <div class="row ">
                <div class="shopping-cart">
                    <div class="shopping-cart-table ">
	<div class="table-responsive">
		<table class="table">
			<thead>
				<tr>
                    <th class="cart-romove item">Hình ảnh</th>
					<th class="cart-description item">Tên sản phẩm</th>
					<th class="cart-product-name item">Màu sắc</th>
					<th class="cart-edit item">Size</th>
					<th class="cart-qty item">Số lượng</th>
					<th class="cart-sub-total item">Tạm tính</th>
					<th class="cart-total last-item">Xóa</th>
				</tr>
			</thead>
            
			<tbody id="cartPage">


			</tbody>
		</table>
	</div>
</div>			




<div class="col-md-4 col-sm-12 estimate-ship-tax">

</div>	



<div class="col-md-4 col-sm-12 estimate-ship-tax">
	@if(Session::has('coupon'))

	@else

	<table class="table" id="couponField">
		<thead>
			<tr>
				<th>
					<span class="estimate-title">Mã giảm giá</span>
					<p>Nhập mã phiếu thưởng của bạn nếu bạn có ...</p>
				</th>
			</tr>
		</thead>
		<tbody>


				<tr>
					<td>
						<div class="form-group">
							<input type="text" class="form-control unicase-form-control text-input" placeholder="Mã của bạn ..." id="coupon_name">
						</div>
						<div class="clearfix pull-right">
							<button type="submit" class="btn-upper btn btn-primary" onclick="applyCoupon()">ÁP DỤNG</button>
						</div>
					</td>
				</tr>



		</tbody><!-- /tbody -->
	</table><!-- /table -->
	@endif
</div><!-- /.estimate-ship-tax -->

<div class="col-md-4 col-sm-12 cart-shopping-total">
	<table class="table">
		<thead id="couponCalField"	>
			
		</thead><!-- /thead -->
		<tbody>
				<tr>
					<td>
						<div class="cart-checkout-btn pull-right">
							<a href="{{ route('checkout') }}" type="submit" class="btn btn-primary checkout-btn">TIẾN HÀNH THANH TOÁN</a>
						</div>
					</td>
				</tr>
		</tbody><!-- /tbody -->
	</table><!-- /table -->
</div><!-- /.cart-shopping-total -->			








</div><!-- /.row -->
</div>
<br>

@include('frontend.body.brands')
</div>


@endsection



