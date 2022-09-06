@extends('frontend.main_master')


@section('title')
Liên hệ chúng tôi
@endsection

@section('content')

<!-- ============================================== HEADER : END ============================================== -->
<div class="breadcrumb">
	<div class="container">
		<div class="breadcrumb-inner">
			<ul class="list-inline list-unstyled">
				<li><a href="{{ asset('') }}">Home</a></li>
				<li class='active'>Liên hệ</li>
			</ul>
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content">
	<div class="container">
    <div class="contact-page">
		<div class="row">
			
				<div class="col-md-12 contact-map outer-bottom-vs">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.2540886889255!2d108.20710171422373!3d16.052299244156693!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219b994f56cc5%3A0x7068084191f6d659!2zOTkgTmd1eeG7hW4gSOG7r3UgVGjhu40sIEjDsmEgVGh14bqtbiBOYW0sIEjhuqNpIENow6J1LCDEkMOgIE7hurVuZyA1NTAwMDAsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1650943482782!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>
				<div class="col-md-12 contact-form">
	<div class="col-md-12 contact-title">
		<h3><b>PHẢN HỒI VỚI CHÚNG TÔI</b> </h3>
	</div>
	<div class="col-md-4 ">
		<form class="register-form" role="form">
			<div class="form-group">
		    <label class="info-title" for="exampleInputName">Tên của bạn<span>*</span></label>
		    <input type="email" class="form-control unicase-form-control text-input" id="exampleInputName" placeholder="">
		  </div>
		</form>
	</div>
	<div class="col-md-4">
		<form class="register-form" role="form">
			<div class="form-group">
		    <label class="info-title" for="exampleInputEmail1">Email của bạn <span>*</span></label>
		    <input type="email" class="form-control unicase-form-control text-input" id="exampleInputEmail1" placeholder="">
		  </div>
		</form>
	</div>
	<div class="col-md-4">
		<form class="register-form" role="form">
			<div class="form-group">
		    <label class="info-title" for="exampleInputTitle">Tiêu đề <span>*</span></label>
		    <input type="email" class="form-control unicase-form-control text-input" id="exampleInputTitle" placeholder="">
		  </div>
		</form>
	</div>
	<div class="col-md-12">
		<form class="register-form" role="form">
			<div class="form-group">
		    <label class="info-title" for="exampleInputComments">Nội dung <span>*</span></label>
		    <textarea class="form-control unicase-form-control" id="exampleInputComments"></textarea>
		  </div>
		</form>
	</div>
	<div class="col-md-12 outer-bottom-small m-t-20">
		<button type="submit" class="btn-upper btn btn-primary checkout-page-button">Gửi phản hồi</button>
	</div>
</div>
		
</div><!-- /.contact-page -->
		</div><!-- /.row -->
        </div>
@endsection