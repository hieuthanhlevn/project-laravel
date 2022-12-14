<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hóa đơn</title>

  
<style type="text/css">
  *{ font-family: DejaVu Sans !important; font-size: 11px;}
    * {
        font-family: Verdana, Arial, sans-serif;
    }
    table{
        font-size: x-small;
    }
    tfoot tr td{
        font-weight: bold;
        font-size: x-small;
    }
    .gray {
        background-color: lightgray
    }
    .font{
      font-size: 15px;
    }
    .authority {
        /*text-align: center;*/
        float: right
    }
    .authority h5 {
        margin-top: -10px;
        color: green;
        /*text-align: center;*/
        margin-left: 35px;
    }
    .thanks p {
        color: green;;
        font-size: 16px;
        font-weight: normal;
        font-family: serif;
        margin-top: 20px;
    }
</style>


</head>
<body>

  <table width="100%" style="background: #F7F7F7; padding:0 20px 0 20px;">
    <tr>
        <td valign="top">
          <!-- {{-- <img src="" alt="" width="150"/> --}} -->
          <h2 style="color: green; font-size: 12px;"><strong>Flimart Shop</strong></h2>
        </td>
        <td align="right">
            <pre class="font" >
               Flimart
               Email:hotro@flimart.com
               Phone: +84 707 333 555
               Địa chỉ: Hải Châu - Đà Nẵng
              
            </pre>
        </td>
    </tr>

  </table>


  <table width="100%" style="background:white; padding:2px;""></table>

  <table width="100%" style="background: #F7F7F7; padding:0 5 0 5px;" class="font">
    <tr>
        <td>
          <p class="font" style="margin-left: 20px;">
           <strong>Họ tên:</strong> {{ $order->name }}<br>
           <strong>Email:</strong> {{ $order->email }} <br>
           <strong>Số điện thoại:</strong> {{ $order->phone }} <br>
           <strong>Số nhà, tên đường:</strong> {{ $order->street_id }} <br>
           <strong>Quận/Phường/Huyện-xã:</strong> {{ $order->district_id }} <br>
           <strong>Tỉnh/Thành phố:</strong> {{ $order->city_id }} <br>
           <strong>ZipCode:</strong> {{ $order->post_code }}
         </p>
        </td>
        <td>
          <p class="font">
            <h3><span style="color: green;">Invoice:</span> #{{ $order->invoice_no}}</h3>
            Ngày đặt hàng: {{ $order->order_date }} <br>
            Ngày nhận hàng: {{ $order->delivered_date }} <br>
            Phương thức thanh toán: {{ $order->payment_method }} </span>
         </p>
        </td>
    </tr>
  </table>
  <br/>
<h3>SẢN PHẨM</h3>


  <table width="100%">
    <thead style="background-color: green; color:#FFFFFF;">
      <tr class="font">
        <th>Hình ảnh</th>
        <th>Tên sản phẩm</th>
        <th>Size</th>
        <th>Màu sắc</th>
        <th>Mã SKU</th>
        <th>Số lượng</th>
        <th>Đơn giá </th>
        <th>Tổng cộng </th>
      </tr>
    </thead>
    <tbody>

     @foreach($orderItem as $item)
      <tr class="font">
        <td align="center">
            <img src="{{ public_path($item->product->product_thambnail)  }}" height="60px;" width="60px;" alt="">
        </td>
        <td align="center"> {{ $item->product->product_name }}</td>
        <td align="center">

          @if($item->size == NULL)
           ----
          @else
            {{ $item->size }}
          @endif
            
        </td>
        <td align="center">{{ $item->color }}</td>
        <td align="center">{{ $item->product->product_code }}</td>
        <td align="center">{{ $item->qty }}</td>
        <td align="center">{{ number_format($item->price) }} đ</td>
        <td align="center">{{ number_format($item->price * $item->qty) }} đ</td>
      </tr>
      @endforeach
      
    </tbody>
  </table>
  <br>
  <table width="100%" style=" padding:0 10px 0 10px;">
    <tr>
        <td align="right" >
            <h2><span style="color: green;">Tạm tính:</span>{{ number_format($order->amount) }} đ</h2>
            <h2><span style="color: green;">Tổng cộng:</span> {{ number_format($order->amount) }} đ</h2>
            {{-- <h2><span style="color: green;">Full Payment PAID</h2> --}}
        </td>
    </tr>
  </table>
  <div class="thanks mt-3">
    <p>Cảm ơn bạn đã tin tưởng và mua hàng bên chúng tôi..!!</p>
  </div>
  <div class="authority float-right mt-5">
      <p>-----------------------------------</p>
      <h5>Nhân viên</h5>
    </div>
</body>
</html>