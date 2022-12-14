@extends('frontend.main_master')
@section('content')
 
@section('title')
{{ $blogpost->post_title }}
@endsection

 

 <div class="breadcrumb">
	<div class="container">
		<div class="breadcrumb-inner">
			<ul class="list-inline list-unstyled">
				<li><a href="#">Home</a></li>
				<li class='active'>{{ $blogpost->post_title }}</li>
			</ul>
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content">
	<div class="container">
		<div class="row">
			<div class="blog-page">
				<div class="col-md-9">
					<div class="blog-post wow fadeInUp">
	<img class="img-responsive" src="{{ asset($blogpost->post_image) }}" alt="">
	

	<h1>{{ $blogpost->post_title }} </h1>



	 
	<span class="date-time">{{ Carbon\Carbon::parse($blogpost->created_at)->diffForHumans()  }}</span>
	
 <!-- Go to www.addthis.com/dashboard to customize your tools -->
      <div class="addthis_inline_share_toolbox_8tvu"></div>
            

	<p> {!!  $blogpost->post_details  !!} </p>



	 
		 
		 
       <!-- Go to www.addthis.com/dashboard to customize your tools -->
      <div class="addthis_inline_share_toolbox_8tvu"></div>
            
	 
</div>







			<div class="blog-write-comment outer-bottom-xs outer-top-xs">
	<div class="row">
		<div class="col-md-12">
			<h4>Để lại bình luận</h4>
		</div>
		<div class="col-md-4">
			<form class="register-form" role="form">
				<div class="form-group">
			    <label class="info-title" for="exampleInputName">Tên của bạn <span>*</span></label>
			    <input type="email" class="form-control unicase-form-control text-input" id="exampleInputName" placeholder="">
			  </div>
			</form>
		</div>
		<div class="col-md-4">
			<form class="register-form" role="form">
				<div class="form-group">
			    <label class="info-title" for="exampleInputEmail1">Email <span>*</span></label>
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
			    <label class="info-title" for="exampleInputComments">Bình luận của bạn <span>*</span></label>
			    <textarea class="form-control unicase-form-control" id="exampleInputComments" ></textarea>
			  </div>
			</form>
		</div>
		<div class="col-md-12 outer-bottom-small m-t-20">
			<button type="submit" class="btn-upper btn btn-primary checkout-page-button">Gửi bình luận</button>
		</div>
	</div>
</div>
				</div>
				<div class="col-md-3 sidebar">
                
                
                
					<div class="sidebar-module-container">
						<div class="search-area outer-bottom-small">
    <form>
        <div class="control-group">
            <input placeholder="Type to search" class="search-field">
            <a href="#" class="search-button"></a>   
        </div>
    </form>
</div>		

<div class="home-banner outer-top-n outer-bottom-xs">
<img src="{{ asset('frontend/assets/images/banners/LHS-banner.jpg') }}" alt="Image">
</div>
		

		<!-- ======== ====CATEGORY======= === -->
<div class="sidebar-widget outer-bottom-xs wow fadeInUp">
	<h3 class="section-title">Danh mục tin tức</h3>
	<div class="sidebar-widget-body m-t-10">
		<div class="accordion">

@foreach($blogcategory as $category)
	    	 <ul class="list-group">
  <a href="{{ url('blog/category/post/'.$category->id) }}"><li class="list-group-item">{{ $category->blog_category_name }} </li></a>
   
   </ul>
@endforeach
	       
 

	    </div><!-- /.accordion -->
	</div><!-- /.sidebar-widget-body -->
</div><!-- /.sidebar-widget -->
	<!-- ===== ======== CATEGORY : END ==== = -->	



						 
</div>
			</div>
		</div>
	</div>
</div>


<!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5e4b85f98de5201f"></script>


@endsection