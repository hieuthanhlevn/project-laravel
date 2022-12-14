@extends('frontend.main_master')
@section('content')
    @section('title')
    Thông tin sản phẩm 
    @endsection




    <div class="breadcrumb">
        <div class="container">
          <div class="breadcrumb-inner">
            <ul class="list-inline list-unstyled">
              <li><a href="{{ asset('/')}}">Home</a></li>
              <li class='active'>Handbags</li>
            </ul>
          </div>
          <!-- /.breadcrumb-inner --> 
        </div>
        <!-- /.container --> 
      </div>
      <!-- /.breadcrumb -->
      <div class="body-content outer-top-xs">
        <div class='container'>
          <div class='row'>
            <div class='col-md-3 sidebar'> 



              <!-- ================================== TOP NAVIGATION ================================== -->
@include('frontend.common.vertical_menu')
              <!-- ================================== TOP NAVIGATION : END ================================== -->



              <div class="sidebar-module-container">
                <div class="sidebar-filter"> 
                  <!-- ============================================== SIDEBAR CATEGORY ============================================== -->
                  <div class="sidebar-widget wow fadeInUp">
                    <h3 class="section-title">shop</h3>
                    <div class="widget-header">
                      <h4 class="widget-title">Danh mục</h4>
                    </div>
                    <div class="sidebar-widget-body">
                      <div class="accordion">

                        @foreach($categories as $category)
                            <div class="accordion-group">
                            <div class="accordion-heading"> <a href="#collapse{{ $category->id }}" data-toggle="collapse" class="accordion-toggle collapsed"> {{ $category->category_name }} </a> </div>
                            <!-- /.accordion-heading -->
                            <div class="accordion-body collapse" id="collapse{{ $category->id }}" style="height: 0px;">
                                <div class="accordion-inner">

                                    @php
                                    $subcategories = App\Models\SubCategory::where('category_id',$category->id)->orderBy('subcategory_name','ASC')->get();
                                    @endphp 

                                    @foreach($subcategories as $subcategory)
                                        <ul>
                                            <li><a href="{{ url('subcategory/product/'.$subcategory->id.'/'.$subcategory->subcategory_slug ) }}">{{ $subcategory->subcategory_name }} </a></li>
                                        </ul>
                                    @endforeach
                                </div>
                                <!-- /.accordion-inner --> 
                            </div>
                            <!-- /.accordion-body --> 
                            </div>
                        @endforeach
                        <!-- /.accordion-group -->

                        
                      </div>
                      <!-- /.accordion --> 
                    </div>
                    <!-- /.sidebar-widget-body --> 
                  </div>
                  <!-- /.sidebar-widget --> 
                  <!-- ============================================== SIDEBAR CATEGORY : END ============================================== --> 
                  
                  <!-- ============================================== PRICE SILDER============================================== -->
                  <div class="sidebar-widget wow fadeInUp">
                    <div class="widget-header">
                      <h4 class="widget-title">Giá</h4>
                    </div>
                    <div class="sidebar-widget-body m-t-10">
                      <div class="price-range-holder"> <span class="min-max"> <span class="pull-left">100,000 đ</span> <span class="pull-right">800,000 đ</span> </span>
                        <input type="text" id="amount" style="border:0; color:#666666; font-weight:bold;text-align:center;">
                        <input type="text" class="price-slider" value="" >
                      </div>
                      <!-- /.price-range-holder --> 
                      <a href="#" class="lnk btn btn-primary">Xem ngay</a> </div>
                    <!-- /.sidebar-widget-body --> 
                  </div>
                  <!-- /.sidebar-widget --> 
                  <!-- ============================================== PRICE SILDER : END ============================================== --> 

 

@include('frontend.common.product_tags')



                </div>
                <!-- /.sidebar-filter --> 
              </div>
              <!-- /.sidebar-module-container --> 
            </div>
            <!-- /.sidebar -->
            <div class='col-md-9'> 


              <!-- ========================================== SECTION – HERO ========================================= -->
              
           
              <div class="clearfix filters-container m-t-10">
                <div class="row">
                  <div class="col col-sm-6 col-md-6">
                    <div class="filter-tabs">
                      <ul id="filter-tabs" class="nav nav-tabs nav-tab-box nav-tab-fa-icon">
                        <li class="active"> <a data-toggle="tab" href="#grid-container"><i class="icon fa fa-th-large"></i>Lưới</a> </li>
                        <li><a data-toggle="tab" href="#list-container"><i class="icon fa fa-th-list"></i>Danh sách</a></li>
                      </ul>
                    </div>
                    <!-- /.filter-tabs --> 
                  </div>
                  <!-- /.col -->
                  <div class="col col-sm-12 col-md-6">
                    <div class="col col-sm-3 col-md-6 no-padding">
                      <div class="lbl-cnt"> <span class="lbl">Sắp xếp</span>
                        <div class="fld inline">
                          <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                            <button data-toggle="dropdown" type="button" class="btn dropdown-toggle">Phổ biến<span class="caret"></span> </button>
                            <ul role="menu" class="dropdown-menu">
                              <li role="presentation"><a href="#">phổ biến</a></li>
                              <li role="presentation"><a href="#">Giá: từ thấp đến cao</a></li>
                              <li role="presentation"><a href="#">Giá: từ cao đến thấp</a></li>
                              <li role="presentation"><a href="#">Tất cả sản phẩm A đến Z</a></li>
                            </ul>
                          </div>
                        </div>
                        <!-- /.fld --> 
                      </div>
                      <!-- /.lbl-cnt --> 
                    </div>
                    <!-- /.col -->
                    <div class="col col-sm-3 col-md-6 no-padding">
                      <div class="lbl-cnt"> <span class="lbl">Hiển thị</span>
                        <div class="fld inline">
                          <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                            <button data-toggle="dropdown" type="button" class="btn dropdown-toggle"> 1 <span class="caret"></span> </button>
                            <ul role="menu" class="dropdown-menu">
                              <li role="presentation"><a href="#">1</a></li>
                              <li role="presentation"><a href="#">2</a></li>
                              <li role="presentation"><a href="#">3</a></li>
                              <li role="presentation"><a href="#">4</a></li>
                              <li role="presentation"><a href="#">5</a></li>
                              <li role="presentation"><a href="#">6</a></li>
                              <li role="presentation"><a href="#">7</a></li>
                              <li role="presentation"><a href="#">8</a></li>
                              <li role="presentation"><a href="#">9</a></li>
                              <li role="presentation"><a href="#">10</a></li>
                            </ul>
                          </div>
                        </div>
                        <!-- /.fld --> 
                      </div>
                      <!-- /.lbl-cnt --> 
                    </div>
                    <!-- /.col --> 
                  </div>
                  <!-- /.col -->


                  <!-- /.col --> 
                </div>
                <!-- /.row --> 
              </div>




              {{--//////////////////////// product grid view ////////////////////////--}}
              <div class="search-result-container ">
                <div id="myTabContent" class="tab-content category-list">
                  <div class="tab-pane active " id="grid-container">
                    <div class="category-product">
                      <div class="row">

                        @foreach($products as $product)
                            <div class="col-sm-6 col-md-4 wow fadeInUp">
                                <div class="products">
                                    <div class="product">
                                    <div class="product-image">
                                        <div class="image"> <a href="{{ url('product/details/'.$product->id.'/'.$product->product_slug ) }}"><img  src="{{ asset($product->product_thambnail) }}" alt=""></a> </div>
                                        <!-- /.image -->

                                        @php
                                        $amount = $product->selling_price - $product->discount_price;
                                        $discount = ($amount/$product->selling_price) * 100;
                                        @endphp 
                                        
                                        <div>
                                            @if ($product->discount_price == NULL)
                                            <div class="tag new"><span>new</span></div>
                                            @else
                                            <div class="tag hot"><span>{{ round($discount) }}%</span></div>
                                            @endif
                                        </div>

                                    </div>
                                    <!-- /.product-image -->
                                    
                                    <div class="product-info text-left">
                                        <h3 class="name"><a href="{{ url('product/details/'.$product->id.'/'.$product->product_slug ) }}">{{ $product->product_name }}</a></h3>
                                        <div class="rating rateit-small"></div>
                                        <div class="description"></div>


                                        @if ($product->discount_price == NULL)
                                            <div class="product-price"> <span class="price"> {{ number_format($product->selling_price) }} đ </span></div>
                                        @else
                                            <div class="product-price"> <span class="price"> {{ number_format($product->discount_price) }} đ </span> <span class="price-before-discount">{{ number_format($product->selling_price) }} đ </span> </div>
                                        @endif
                                        
                                        <!-- /.product-price --> 
                                        
                                    </div>
                                    <!-- /.product-info -->
                                    <div class="cart clearfix animate-effect">
                                        <div class="action">
                                        <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                  <button class="btn btn-primary icon" type="button" title="Add Cart" data-toggle="modal" data-target="#exampleModal" id="{{ $product->id }}" onclick="productView(this.id)"> <i class="fa fa-shopping-cart"></i> </button>
                                  <button class="btn btn-primary cart-btn" id="wishlist" type="button">Thêm vào giỏ hàng</button>
  
                              </li>
                              <button class="btn btn-primary icon" type="button" title="Wishlist" id="{{ $product->id }}" onclick="addToWishList(this.id)"> <i class="fa fa-heart"></i> </button>
                              <li class="lnk"> <a data-toggle="tooltip" class="add-to-cart" href="" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                            </ul>>
                                        </div>
                                        <!-- /.action --> 
                                    </div>
                                    <!-- /.cart --> 
                                    </div>
                                    <!-- /.product --> 
                                    
                                </div>
                            <!-- /.products --> 
                            </div>
                        @endforeach

                        <!-- /.item -->

                        
                      </div>
                      <!-- /.row --> 
                    </div>
                    <!-- /.category-product --> 
                    
                  </div>
                  <!-- /.tab-pane -->
        {{--//////////////////////// end product gird view ////////////////////////--}}

         {{--//////////////////////// product list view ////////////////////////--}}
                  <div class="tab-pane "  id="list-container">
                    <div class="category-product">


                        @foreach($products as $product)
                            <div class="category-product-inner wow fadeInUp">
                                <div class="products">
                                <div class="product-list product">
                                    <div class="row product-list-row">
                                    <div class="col col-sm-4 col-lg-4">
                                        <div class="product-image">
                                        <div class="image"> <img src="{{ asset($product->product_thambnail) }}" alt=""> </div>
                                        </div>
                                        <!-- /.product-image --> 
                                    </div>
                                    <!-- /.col -->
                                    <div class="col col-sm-8 col-lg-8">
                                        <div class="product-info">
                                        <h3 class="name"><a href="{{ url('product/details/'.$product->id.'/'.$product->product_slug ) }}">{{ $product->product_name }}</a></h3>
                                        <div class="rating rateit-small"></div>


                                        @if ($product->discount_price == NULL)
                                            <div class="product-price"> <span class="price"> {{ number_format($product->selling_price) }} đ </span></div>
                                        @else
                                            <div class="product-price"> <span class="price"> {{ number_format($product->discount_price) }} đ </span> <span class="price-before-discount">{{ number_format($product->selling_price) }} đ </span> </div>
                                        @endif
                                        


                                        <div class="description m-t-10">{{ $product->short_descp }}</div>
                                        <div class="cart clearfix animate-effect">
                                            <!-- <div class="action">
                                            <ul class="list-unstyled">
                                              <li class="add-cart-button btn-group">
                                                  <button class="btn btn-primary icon" type="button" title="Add Cart" data-toggle="modal" data-target="#exampleModal" id="{{ $product->id }}" onclick="productView(this.id)"> <i class="fa fa-shopping-cart"></i> </button>
                                                  <button class="btn btn-primary cart-btn" type="button">Thêm vào giỏ hàng</button>
                                              </li>
                                              <button class="btn btn-primary icon" type="button" title="Wishlist" id="{{ $product->id }}" onclick="addToWishList(this.id)"> <i class="fa fa-heart"></i> </button>
                                              <li class="lnk"> <a data-toggle="tooltip" class="add-to-cart" href="" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                            </ul>>
                                            </div> -->
                                            <!-- /.action --> 
                                        </div>
                                        <!-- /.cart --> 
                                        
                                        </div>
                                        <!-- /.product-info --> 
                                    </div>
                                    <!-- /.col --> 
                                    </div>
                                    <!-- /.product-list-row -->
                                    @php
                                    $amount = $product->selling_price - $product->discount_price;
                                    $discount = ($amount/$product->selling_price) * 100;
                                    @endphp 

                                    <div>
                                        @if ($product->discount_price == NULL)
                                        <div class="tag new"><span>new</span></div>
                                        @else
                                        <div class="tag hot"><span>{{ round($discount) }}%</span></div>
                                        @endif
                                    </div>


                                </div>
                                <!-- /.product-list --> 
                                </div>
                                <!-- /.products --> 
                            </div>
                        @endforeach

                      <!-- /.category-product-inner -->
                      
                      
                    </div>
                    <!-- /.category-product --> 
                  </div>
                  <!-- /.tab-pane #list-container --> 

 {{--//////////////////////// end product list view ////////////////////////--}}


                </div>
                <!-- /.tab-content -->
                <div class="clearfix filters-container">
                  <div class="text-right">
                    <div class="pagination-container">
                      <ul class="list-inline list-unstyled">
                        {{ $products->links()  }}
                      </ul>
                      <!-- /.list-inline --> 
                    </div>
                    <!-- /.pagination-container --> </div>
                  <!-- /.text-right --> 
                  
                </div>
                <!-- /.filters-container --> 
                
              </div>
              <!-- /.search-result-container --> 
              
            </div>
            <!-- /.col --> 
          </div>
          <!-- /.row --> 
          <!-- ============================================== BRANDS CAROUSEL ============================================== -->
          <div id="brands-carousel" class="logo-slider wow fadeInUp">
            <div class="logo-slider-inner">
              <div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
                <div class="item m-t-15"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand1.png" src="assets/images/blank.gif" alt=""> </a> </div>
                <!--/.item-->
                
                <div class="item m-t-10"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand2.png" src="assets/images/blank.gif" alt=""> </a> </div>
                <!--/.item-->
                
                <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand3.png" src="assets/images/blank.gif" alt=""> </a> </div>
                <!--/.item-->
                
                <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand4.png" src="assets/images/blank.gif" alt=""> </a> </div>
                <!--/.item-->
                
                <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand5.png" src="assets/images/blank.gif" alt=""> </a> </div>
                <!--/.item-->
                
                <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand6.png" src="assets/images/blank.gif" alt=""> </a> </div>
                <!--/.item-->
                
                <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand2.png" src="assets/images/blank.gif" alt=""> </a> </div>
                <!--/.item-->
                
                <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand4.png" src="assets/images/blank.gif" alt=""> </a> </div>
                <!--/.item-->
                
                <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand1.png" src="assets/images/blank.gif" alt=""> </a> </div>
                <!--/.item-->
                
                <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand5.png" src="assets/images/blank.gif" alt=""> </a> </div>
                <!--/.item--> 
              </div>
              <!-- /.owl-carousel #logo-slider --> 
            </div>
            <!-- /.logo-slider-inner --> 
            
          </div>
          <!-- /.logo-slider --> 
          <!-- ============================================== BRANDS CAROUSEL : END ============================================== --> </div>
        <!-- /.container --> 
        
      </div>
      <!-- /.body-content --> 
      
      
      
      







@endsection





<!-- /// Load Data yêu thích  -->
<script type="text/javascript">
     function wishlist(){
        $.ajax({
            type: 'GET',
            url: 'user/get-wishlist-product',
            dataType:'json',
            success:function(response){
                var rows = ""
                $.each(response, function(key,value){
                    rows += `<tr>
                    <td class="col-md-2"><img src="${value.product.product_thambnail} " alt="imga"></td>
                    <td class="col-md-7">
                        <div class="product-name"><a href="#">${value.product.product_name}</a></div>
                         
                        <div class="price">
                        ${value.product.discount_price == null
                            ? `${value.product.selling_price} đ`
                            :
                            `${value.product.discount_price} đ<span>${value.product.selling_price} đ</span>`
                        }
                        </div>
                    </td>
        <td class="col-md-2">
            <button class="btn btn-primary icon" type="button" title="Add Cart" data-toggle="modal" data-target="#exampleModal" id="${value.product_id} đ" onclick="productView(this.id)"> Thêm vào giỏ hàng </button>
        </td>
        <td class="col-md-1 close-btn">
          <button type="submit" class="" id="${value.id}" onclick="wishlistRemove(this.id)"><i class="fa fa-times"></i></button>
        </td>
                </tr>`
        });
                $('#wishlist').html(rows);
            }
        })
     }
 wishlist();

 
 </script> 