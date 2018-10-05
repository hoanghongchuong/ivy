@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
<div class="wrap-breadcrumb">
    <div class="clearfix container">
        <div class="row main-header">                           
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pd5  ">
                <ol class="breadcrumb breadcrumb-arrows">
                    <li><a href="index.html" target="_self">Trang chủ</a></li>
                    <li class="active"><span>Giỏ hàng</span></li>
                    
                </ol>
            </div>
        </div>
    </div>
</div>
<section id="content" class="clearfix container">
    <div class="row">
        <div id="cart" class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="row" >
                <div id="layout-page" class="col-md-12 col-sm-12 col-xs-12">
                    <span class="header-page clearfix">
                        <h1>Giỏ hàng</h1>
                    </span>
                    <form action="{{route('updateCart')}}" method="post" id="cartformpage">
                         <input type="hidden" name="_token" value="{{csrf_token()}}">
                        <table>
                            <thead>
                                <tr>
                                    <th class="image">&nbsp;</th>
                                    <th class="item">Tên sản phẩm</th>
                                    <th class="qty">Số lượng</th>
                                    <th class="price">Giá tiền</th>
                                    <th class="remove">&nbsp;</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($product_cart as $key=>$product)
                                <tr>
                                    <td class="image">
                                        <div class="product_image">
                                            <a href="detail.html">
                                                <img src="{{asset('upload/product/'.$product->options->photo)}}" alt="{{$product->name}}" />

                                            </a>
                                        </div>
                                    </td>
                                    <td class="item">
                                        <a href="detail.html">
                                            <strong>{{$product->name}}</strong>
                                            
                                            <!-- <span class="variant_title">S / Xanh</span> -->
                                            
                                        </a>
                                    </td>
                                    <td class="qty">
                                        <!-- <input type="number" size="4" name="updates[]" min="1" id="updates_1009814266" value="1" onfocus="this.select();" class="tc item-quantity" /> -->
                                       <input type="number" class="tc item-quantity" min="0" value="{{$product->qty}}" id="{{ $product->rowId }}"  name="numb[{{$key}}]">
                                    </td>
                                    <td class="price">{{number_format($product->price)}} ₫</td>
                                    <td class="remove">
                                        <a id="{{$product->rowId}}" href="{{url('xoa-gio-hang/'.$product->rowId)}}">Xóa</a>
                                    </td>
                                </tr>
                                @endforeach
                                <tr class="summary">
                                    <td class="image">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td class="text-center"><b>Tổng cộng:</b></td>
                                    <td class="price">
                                        <span class="total">
                                            <strong>{{number_format($total)}} ₫</strong>
                                        </span>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                
                            </tbody>
                        </table>
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-12 inner-left inner-right">
                                <!-- <div class="checkout-buttons clearfix">
                                    <label for="note">Ghi chú </label>
                                    <textarea id="note" name="note" rows="8" cols="50"></textarea>
                                </div> -->
                                 <a  href="{{url('san-pham')}}"><i class="fa fa-reply"></i> Tiếp tục mua hàng</a>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12 cart-buttons inner-right inner-left">
                                <div class="buttons clearfix">
                                    <!-- <button type="button" id="checkout" class="button-default" name="checkout" value="" ></button> -->
                                    <a href="{{url('thanh-toan')}}" id="checkout" class="button-default" title="">Gửi đơn hàng</a>
                                    <button type="submit" id="update-cart" class="button-default" name="update"  value="" >Cập nhật</button>
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12  col-xs-12 continue-shop">
                                <!-- <a  href="collectionsall.html"><i class="fa fa-reply"></i> Tiếp tục mua hàng</a> -->
                            </div>
                                    
                        </div>
                    </form>
                </div>
            </div>
            
        </div>
    </div>
</section>

@endsection
