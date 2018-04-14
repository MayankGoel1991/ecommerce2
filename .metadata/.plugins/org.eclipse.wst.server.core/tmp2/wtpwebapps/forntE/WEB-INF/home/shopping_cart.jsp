<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cost Of Living</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'>
<link href="<c:url value="/resources/css/shopping_cart.css" />" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body style="background-color: #e7f8ff!important;">
<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-chevron-up" aria-hidden="true"></i></button>
<div class="container">
  <div class="row">
    <div class="col" style="margin-right: 35px;">
      <h2>Your product in System</h2> 
<div class="row" style="width:80%;margin:0 auto;">
        
        <div class="">
        <div class="card bg-light mb-3 ">
        <img class="zoom" style="cursor: crosshair; height: 416px; width: 416px;" src="<c:url value="/resources/image/${Product.pTraImgFile}"></c:url>" alt="Image">
		  <div class="card-body">
		    <h5 class="card-title">${productCatList.pName}</h5>
		    
		    
		    <p class="card-text" style="color: #388e3c;padding-top: 8px;white-space: nowrap;
    overflow: hidden;">Price:Rs ${productCatList.pPrice}</p>
    <p class="card-text"><h6 class="card-subtitle mb-2 text-muted">${productCatList.pDescription}</h6></p>
<button class="button green">
	<div class="title"><a href="${pageContext.request.contextPath}/cart/addTocart/${productCatList.productId}"><i class="fa fa-cart-plus" aria-hidden="true"></i>&nbsp;Add to cart</a></div>
	<div class="price">$9,99</div>
</button>
		    </div>
		</div>           
		</div>
		
    </div>
    </div>
    <div class="col">
    <br><br>
    <h1 class="">${productCatList.pName}</h1>
    <p class=""><h2 class="">${productCatList.pDescription}</h2></p>
    
	<span id="div1" class="fa fa-star checked"></span>
	<span class="fa fa-star checked"></span>
	<span class="fa fa-star checked"></span>
	<span class="fa fa-star"></span>
    <hr>
    
      <p class="" style="color: #388e3c;padding-top: 8px;white-space: nowrap;
    overflow: hidden;">Price:$ ${productCatList.pPrice}</p>
    <span id="cod_eligible_message" class="a-color-base">
                <b>Cash on Delivery</b> eligible.
            </span>
            <span class="a-size-medium a-color-success">
        
            
            In stock.
        
        
    </span>
    <div id="ddmDeliveryMessage" class="a-section a-spacing-mini">                    
                                <span class="a-color-success a-text-bold">Guaranteed</span> delivery to pincode <b>110032</b>&nbsp;-&nbsp;Delhi by <b>Tomorrow 11am</b> with <b>Morning delivery</b> — Order in the next <span id="ddmFastestCountdown" class="a-color-success a-text-bold">7 hours and 1 minute</span> <a href="" target="AmazonHelp" onclick="">Details</a>
    </div>
    <div id="merchant-info" class="a-section a-spacing-mini">
       Sold by <a href="">Ghadi center</a> (3.7 out of 5 <font color="AAAAAA">|</font> 100 ratings) and <a href="/gp/help/customer/display.html?ie=UTF8&amp;ref=dp_fulfillment&amp;nodeId=200953360" id="SSOFpopoverLink" class="a-declarative">Fulfilled by Amazon</a>.
        <span class="">
            Gift-wrap available.
        </span>
</div>
<div id="feature-bullets" class="a-section a-spacing-medium a-spacing-top-small">
         <ul class="a-unordered-list a-vertical a-spacing-none">
				<li><span class="a-list-item"> 
							Band Material: Leather
							
						</span></li>
					
						<li><span class="a-list-item"> 
							Color: Brown
							
						</span></li>
					
						<li><span class="a-list-item"> 
							Type: John Morgan Round Shape Stainless Steel Watch
							
						</span></li>
					
						<li><span class="a-list-item"> 
							Display type: Analogue
							
						</span></li>
					
						<li><span class="a-list-item"> 
							Watch Movement Type: Quartz
							
						</span></li>
					
				</ul>
				<!--  Loading EDP related metadata -->
				</div>
    </div>
  </div>
  <div id="technicalSpecifications_feature_div" class="feature" data-feature-name="technicalSpecifications">
        <div class="a-divider a-divider-section"><div class="a-divider-inner"></div></div>
        <h2>Product specifications</h2>
        <div class="a-section a-spacing-micro">
        </div>
   
        <div class="a-row">
            <div class="a-column a-span6 a-spacing-base a-ws-span6">
            <h5 class="a-spacing-small a-spacing-top-small">Watch Information</h5>
<table id="technicalSpecifications_section_1" class="a-keyvalue a-spacing-mini">
            <tbody><tr>
                <th class="a-span5 a-size-base">
        Band Colour
          </th>
                <td class="a-span7 a-size-base">
        brown
             </td>
            </tr>
            
            <tr>
                <th class="a-span5 a-size-base">
        Band Material
          </th>
                <td class="a-span7 a-size-base">
        leather
                </td>
            </tr>
            <tr>
                <th class="a-span5 a-size-base">
        Brand
                </th>
                <td class="a-span7 a-size-base">
         john morgan
                </td>
            </tr>
            <tr>
                <th class="a-span5 a-size-base">
        Dial Colour
                </th>
                <td class="a-span7 a-size-base">
        black
                </td>
            </tr>
            <tr>
                <th class="a-span5 a-size-base">
        <span class="a-declarative" data-action="a-popover" data-a-popover="{&quot;cache&quot;:&quot;true&quot;,&quot;name&quot;:&quot;Crystal Material&quot;,&quot;width&quot;:&quot;500&quot;,&quot;header&quot;:&quot;Crystal Material&quot;,&quot;position&quot;:&quot;triggerRight&quot;,&quot;scrollable&quot;:&quot;true&quot;,&quot;url&quot;:&quot;/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?containerHeight=520&amp;keyLookUp=watch_help_attr-name_dial_window_material_type&quot;}">
            <a class="a-link-normal a-popover-trigger" target="_blank" href="/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?keyLookUp=watch_help_attr-name_dial_window_material_type">
                <span style="white-space: nowrap">
                
                    <span style="white-space: normal">Crystal Material</span>&#65279;<i class="a-icon a-icon-popover"></i>
                </span>
            </a>
        </span>
                </th>
                <td class="a-span7 a-size-base">
        Glass
                </td>
            </tr>
            <tr>
                <th class="a-span5 a-size-base">
        Display Type
                </th>
                <td class="a-span7 a-size-base">
        analogue
                </td>
            </tr>
            <tr>
                <th class="a-span5 a-size-base">
        Case Shape
                </th>
                <td class="a-span7 a-size-base">
        round
                </td>
            </tr>
            <tr>
                <th class="a-span5 a-size-base">
        Item Weight
                </th>
                <td class="a-span7 a-size-base">

        132 Grams
                </td>
            </tr>    
            
            <tr>
                <th class="a-span5 a-size-base">
                      
        Model Number

                </th>
                <td class="a-span7 a-size-base">
                  
        JM-COPBKL-UV8
                </td>
            </tr>        
            
            <tr>
                <th class="a-span5 a-size-base">
                     
        Part Number
               </th>
                <td class="a-span7 a-size-base">    
        JM-COPBKL-UV8
                </td>
            </tr>       
            
            <tr>
                <th class="a-span5 a-size-base">
                   Warranty Type
        </th>
                <td class="a-span7 a-size-base">
     manufacturer
                </td>
            </tr>
            
            <tr>
                <th class="a-span5 a-size-base">
                   
        <span class="a-declarative" data-action="a-popover" data-a-popover="{&quot;cache&quot;:&quot;true&quot;,&quot;name&quot;:&quot;Movement&quot;,&quot;width&quot;:&quot;500&quot;,&quot;header&quot;:&quot;Movement&quot;,&quot;position&quot;:&quot;triggerRight&quot;,&quot;scrollable&quot;:&quot;true&quot;,&quot;url&quot;:&quot;/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?containerHeight=520&amp;keyLookUp=watch_help_attr-name_watch_movement_type&quot;}">
            <a class="a-link-normal a-popover-trigger" target="_blank" href="/gp/product/ajax-handlers/tech-spec-popover-contents.html/ref=dp_soft_tech_spec?keyLookUp=watch_help_attr-name_watch_movement_type">
                <span style="white-space: nowrap">
                
                    <span style="white-space: normal">Movement</span>&#65279;<i class="a-icon a-icon-popover"></i>
                </span>
            </a>
        </span>
    
                </th>
                <td class="a-span7 a-size-base">
                    
                   
        Quartz
    
                </td>
            </tr>
            
        
    </tbody></table>

            </div>
            <div class="a-column a-span6 a-spacing-base a-ws-span6 a-span-last a-ws-span-last">
                


            </div>
        </div>
        
        
        
        <div id="productDescription_feature_div" data-feature-name="productDescription" data-template-name="productDescription" class="a-row feature">
         
            
            
                <div class="a-divider a-divider-section"><div class="a-divider-inner"></div></div>
               
                 
                 <h2 class="softlines">
                    Product description
                    
                 </h2>
                
                
    <div id="productDescription" class="a-section a-spacing-small">
                <!-- show up to 2 reviews by default --> 
        	<p>This watch is especially designed for all handsome men, who desire for a royal and luxurious look. Making it a party accessory for you. This watch will look perfect on every occasion, though its design makes it more suitable for your adventures. This watch can be a great companion as it will match all types of attires, be it a formal wear or a casual outfit. This watch is also appropriate for being gifted to someone you adore.</p>
    </div>       
        
    </div>
 
    
    
    <div id="detail_bullets_id">

<hr noshade="noshade" size="1" class="bucketDivider">
<table cellpadding="0" cellspacing="0" border="0">
  <tbody><tr>
    <td class="bucket">
      <h2>Product details</h2>
      <div class="content">
<ul>

    <li><b>
    Item Weight: 
    </b>
    132 g
    </li>

<li><b>Item model number:</b> JM-COPBKL-UV8</li>

<li><b>ASIN: </b>B01NCOQ537</li>
    <li><b> Date first available at Amazon.in:</b> 22 December 2016</li>

<li><b>Average Customer Review:</b> 
<span class="dpProductDetailB01NCOQ537">
  <span class="a-declarative" data-action="a-popover" data-a-popover="{&quot;closeButton&quot;:&quot;false&quot;,&quot;max-width&quot;:&quot;700&quot;,&quot;position&quot;:&quot;triggerBottom&quot;,&quot;url&quot;:&quot;/review/widgets/average-customer-review/popover/ref=acr_dpproductdetail_popover?ie=UTF8&amp;asin=B01NCOQ537&amp;contextId=dpProductDetail&amp;ref=acr_dpproductdetail_popover&quot;}">
    <a href="javascript:void(0)" class="a-popover-trigger a-declarative">
      </a><a class="a-link-normal a-text-normal" href="https://www.amazon.in/product-reviews/B01NCOQ537/ref=acr_dpproductdetail_text?ie=UTF8&amp;showViewpoints=1">
        <i class="a-icon a-icon-star a-star-3-5"><span class="a-icon-alt">3.4 out of 5 stars</span></i>
      </a>
    <i class="a-icon a-icon-popover"></i>
  </span>
  <span class="a-letter-space"></span>
  <span class="a-size-small">
    <a class="a-link-normal" href="https://www.amazon.in/product-reviews/B01NCOQ537/ref=acr_dpproductdetail_text?ie=UTF8&amp;showViewpoints=1">
      190 customer reviews
    </a>
  </span>
</span>
</li>
<li id="SalesRank">
<b>Amazon Bestsellers Rank:</b> 
#38 in Watches (<a href="https://www.amazon.in/gp/bestsellers/watches/ref=pd_dp_ts_watches_1">See Top 100 in Watches</a>)

<ul class="zg_hrsr">
    <li class="zg_hrsr_item">
    <span class="zg_hrsr_rank">#30</span>
    <span class="zg_hrsr_ladder">in&nbsp;<a href="https://www.amazon.in/gp/bestsellers/watches/ref=pd_zg_hrsr_watches_1_1">Watches</a> &gt; <b><a href="https://www.amazon.in/gp/bestsellers/watches/2563504031/ref=pd_zg_hrsr_watches_1_2_last">Men</a></b></span>
    </li>
</ul>

</li>

            <p></p><div class="bucket">    
Would you like to <b><a href="#" id="ns_HZJWHQHSFJT5BH5826N0_769_1_hmd_pricing_feedback_trigger_product-detail" class="a-declarative">tell us about a lower price</a></b>?</div><p></p>



</ul>
</div>
    </td>
  </tr>
</tbody></table>
</div>
     </div>  
</div>     



 
    <!-- Used to set table width because AUI is overriding the width attribute of the tables coming in description -->
<script type="text/javascript">
P.when('jQuery').execute(function($){
    $("#productDescription table").each(function() {
        var width = $(this).attr('width');
        if (width) width += 'px';
        else width = 'auto';
        $(this).css('width', width);

        var padding = $(this).attr('cellpadding');
        if (padding) padding += 'px';
        else padding = '0px';
        $(this).css('padding', padding);
    });
});
</script>
    
    
    
    
    
    <script>
    P.now("A","tellMeMoreLinkData").execute(function(A,tellMeMoreLinkData){
        if(typeof tellMeMoreLinkData !== 'undefined'){
            A.state('lowerPricePopoverData',{"trigger":"ns_HZJWHQHSFJT5BH5826N0_769_1_hmd_pricing_feedback_trigger_product-detail","destination":"/gp/pdp/pf/pricingFeedbackForm.html/ref=pd_gw_simh_pfdpb?ie=UTF8&ASIN=B01NCOQ537&PREFIX=ns_HZJWHQHSFJT5BH5826N0_769_2_&WDG=watch_display_on_website&dpRequestId=HZJWHQHSFJT5BH5826N0&from=product-detail&pd_rd_r=02b0247a-b29d-4126-82cb-05a9ab750d13&pd_rd_w=VCv0E&pd_rd_wg=YIGI9&storeID=watchesencodeURI('&originalURI=' + window.location.pathname)","url":"/gp/pdp/pf/pricingFeedbackForm.html/ref=pd_gw_simh_pfdpb?ie=UTF8&ASIN=B01NCOQ537&PREFIX=ns_HZJWHQHSFJT5BH5826N0_769_2_&WDG=watch_display_on_website&dpRequestId=HZJWHQHSFJT5BH5826N0&from=product-detail&pd_rd_r=02b0247a-b29d-4126-82cb-05a9ab750d13&pd_rd_w=VCv0E&pd_rd_wg=YIGI9&storeID=watches","nsPrefix":"ns_HZJWHQHSFJT5BH5826N0_769_2_","path":"encodeURI('&originalURI=' + window.location.pathname)","title":"Tell Us About a Lower Price"});
            return {
                   key:"pricing-fbW",
                   method: function(){
                                     return {"trigger":"ns_HZJWHQHSFJT5BH5826N0_769_1_hmd_pricing_feedback_trigger_product-detail","destination":"/gp/pdp/pf/pricingFeedbackForm.html/ref=pd_gw_simh_pfdpb?ie=UTF8&ASIN=B01NCOQ537&PREFIX=ns_HZJWHQHSFJT5BH5826N0_769_2_&WDG=watch_display_on_website&dpRequestId=HZJWHQHSFJT5BH5826N0&from=product-detail&pd_rd_r=02b0247a-b29d-4126-82cb-05a9ab750d13&pd_rd_w=VCv0E&pd_rd_wg=YIGI9&storeID=watchesencodeURI('&originalURI=' + window.location.pathname)","url":"/gp/pdp/pf/pricingFeedbackForm.html/ref=pd_gw_simh_pfdpb?ie=UTF8&ASIN=B01NCOQ537&PREFIX=ns_HZJWHQHSFJT5BH5826N0_769_2_&WDG=watch_display_on_website&dpRequestId=HZJWHQHSFJT5BH5826N0&from=product-detail&pd_rd_r=02b0247a-b29d-4126-82cb-05a9ab750d13&pd_rd_w=VCv0E&pd_rd_wg=YIGI9&storeID=watches","nsPrefix":"ns_HZJWHQHSFJT5BH5826N0_769_2_","path":"encodeURI('&originalURI=' + window.location.pathname)","title":"Tell Us About a Lower Price"};
                                     }
                   }
        }
        else{
                P.when("A").register("tellMeMoreLinkData",function(A){
                    A.state('lowerPricePopoverData',{"trigger":"ns_HZJWHQHSFJT5BH5826N0_769_1_hmd_pricing_feedback_trigger_product-detail","destination":"/gp/pdp/pf/pricingFeedbackForm.html/ref=pd_gw_simh_pfdpb?ie=UTF8&ASIN=B01NCOQ537&PREFIX=ns_HZJWHQHSFJT5BH5826N0_769_2_&WDG=watch_display_on_website&dpRequestId=HZJWHQHSFJT5BH5826N0&from=product-detail&pd_rd_r=02b0247a-b29d-4126-82cb-05a9ab750d13&pd_rd_w=VCv0E&pd_rd_wg=YIGI9&storeID=watchesencodeURI('&originalURI=' + window.location.pathname)","url":"/gp/pdp/pf/pricingFeedbackForm.html/ref=pd_gw_simh_pfdpb?ie=UTF8&ASIN=B01NCOQ537&PREFIX=ns_HZJWHQHSFJT5BH5826N0_769_2_&WDG=watch_display_on_website&dpRequestId=HZJWHQHSFJT5BH5826N0&from=product-detail&pd_rd_r=02b0247a-b29d-4126-82cb-05a9ab750d13&pd_rd_w=VCv0E&pd_rd_wg=YIGI9&storeID=watches","nsPrefix":"ns_HZJWHQHSFJT5BH5826N0_769_2_","path":"encodeURI('&originalURI=' + window.location.pathname)","title":"Tell Us About a Lower Price"});
                    return {
                           key:"pricing-fbW",
                           method: function(){
                                             return {"trigger":"ns_HZJWHQHSFJT5BH5826N0_769_1_hmd_pricing_feedback_trigger_product-detail","destination":"/gp/pdp/pf/pricingFeedbackForm.html/ref=pd_gw_simh_pfdpb?ie=UTF8&ASIN=B01NCOQ537&PREFIX=ns_HZJWHQHSFJT5BH5826N0_769_2_&WDG=watch_display_on_website&dpRequestId=HZJWHQHSFJT5BH5826N0&from=product-detail&pd_rd_r=02b0247a-b29d-4126-82cb-05a9ab750d13&pd_rd_w=VCv0E&pd_rd_wg=YIGI9&storeID=watchesencodeURI('&originalURI=' + window.location.pathname)","url":"/gp/pdp/pf/pricingFeedbackForm.html/ref=pd_gw_simh_pfdpb?ie=UTF8&ASIN=B01NCOQ537&PREFIX=ns_HZJWHQHSFJT5BH5826N0_769_2_&WDG=watch_display_on_website&dpRequestId=HZJWHQHSFJT5BH5826N0&from=product-detail&pd_rd_r=02b0247a-b29d-4126-82cb-05a9ab750d13&pd_rd_w=VCv0E&pd_rd_wg=YIGI9&storeID=watches","nsPrefix":"ns_HZJWHQHSFJT5BH5826N0_769_2_","path":"encodeURI('&originalURI=' + window.location.pathname)","title":"Tell Us About a Lower Price"};
                                             }
                           }
			    });
            }
    });
    </script>
    
    
    
    
    
    
    <script>
P.when("jQuery", "cf").execute(function ($) {
    var techSpecsFeatureDiv = $("#technicalSpecifications_feature_div");
    var rowsToBeCollapsed = $(".tableRowToBeCollapsed");
    var expanders = $("#techSpecsExpanderTop, #techSpecsExpanderBottom");
    var expanded = false;
    var isTablet = expanders.hasClass("tablet");

    
    function ensureTechSpecsVisibility(expandedHeight) {
        var collapsedHeight = techSpecsFeatureDiv.height();
        var offsetTop = techSpecsFeatureDiv.offset().top;
        var documentScrollTop = $(document).scrollTop();
        var viewportOffset = offsetTop - documentScrollTop;

        if(viewportOffset < 0) {
        
            var scrollDist = collapsedHeight - expandedHeight;

            if(scrollDist < viewportOffset) {
                scrollDist = viewportOffset;
            }

            $(document).scrollTop(documentScrollTop + scrollDist);
        }
    }

    function handleExpanderEvent(event) {
        expanded = !expanded;

        if(expanded) {
            expanders.removeClass("techSpecsCollapsed");
            expanders.addClass("techSpecsExpanded");
            rowsToBeCollapsed.removeClass("tableRowCollapsed");
        } else {
            var expandedHeight = techSpecsFeatureDiv.height();

            expanders.addClass("techSpecsCollapsed");
            expanders.removeClass("techSpecsExpanded");
            rowsToBeCollapsed.addClass("tableRowCollapsed");

            ensureTechSpecsVisibility(expandedHeight);
        }

        if(isTablet) {
            event.preventDefault();
        }
    }

    if(isTablet) {
        expanders.bind('touchstart', function(event) {
            $(event.currentTarget).addClass('touching');
            event.preventDefault();
        });
        expanders.bind('touchend touchcancel', function(event) {
            $(event.currentTarget).removeClass('touching');
            event.preventDefault();
        });

        expanders.bind('touchend', handleExpanderEvent);
    } else {
        expanders.bind('click', handleExpanderEvent);
    }

});
</script>
<script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
</script>
<script>
function ratestar() {
  var a;
  a = document.getElementById("div1");
  a.innerHTML = "&#xf006;";
  setTimeout(function () {
      a.innerHTML = "&#xf123;";
    }, 1000);
  setTimeout(function () {
      a.innerHTML = "&#xf005;";
    }, 2000);
}
ratestar();
setInterval(ratestar, 3000);
</script>
    
  <%@include file="footer.jsp" %>
</body>
</html>