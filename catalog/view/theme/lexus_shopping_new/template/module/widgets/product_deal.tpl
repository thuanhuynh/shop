<?php
	$config = $this->registry->get('config'); 

	$theme  = $config->get('config_template');

	//$cols = 12/$limit; 
	$span = 12/$cols; 
	$active = 'latest';
	$id = "wddeals-" . rand(1,9);

	$themeConfig  	 			= (array)$config->get('themecontrol');
	$listingConfig  			= array( 		
		'category_pzoom' 		=> 1,
		'show_swap_image' 		=> 0,
		'quickview' 			=> 0,
		'product_layout'		=> 'default',
		'catalog_mode'			=> '',
	); 
	$listingConfig  			= array_merge($listingConfig, $themeConfig );
	$categoryPzoom 	    		= $listingConfig['category_pzoom'];
	$quickview 					= $listingConfig['quickview'];
	$swapimg 					= ($listingConfig['show_swap_image'])?'swap':'';
 
 
	$productLayout = DIR_TEMPLATE.$config->get('config_template').'/template/common/product/deal_default.tpl';	 

 	$ourl = $this->registry->get('url');
 	$objlang = $this->registry->get('language');
  $load = $this->registry->get("load");
  $language = $load->language("module/themecontrol");
  $text_sale = $language['text_sale'];
  $text_days = $language['text_days'];
  $text_hours = $language['text_hours'];
  $text_minutes = $language['text_minutes'];
  $text_seconds = $language['text_seconds'];
?>

<div class="productdeals panel panel-default panel-v2 <?php echo $addition_cls; ?>">
	<?php if( $show_title ) { ?>
	<div class="widget-heading panel-heading"><h4 class="panel-title"><?php echo $heading_title?></h4></div>
	<?php } ?>
	<div class="widget-inner panel-body space-padding-lr-0">
		


		<div class="box-products slide" id="pavdeals<?php echo $id;?>">
			<?php if( count($products) > $itemsperpage ) { ?>
				<div class="carousel-controls carousel-center">
					<a class="carousel-control left" href="#pavdeals<?php echo $id;?>"   data-slide="prev"><i class="fa fa-angle-left"></i></a>
					<a class="carousel-control right" href="#pavdeals<?php echo $id;?>"  data-slide="next"><i class="fa fa-angle-right"></i></a>
				</div> 
			<?php } ?>
			<div class="carousel-inner ">		
			 <?php
				$pages = array_chunk( $products, $itemsperpage);
			 ?>

			 <?php foreach ($pages as  $k => $tproducts ) {   ?>
					<div class="item <?php if($k==0) {?>active<?php } ?>">
						<?php foreach( $tproducts as $i => $product ) {  $i=$i+1;?>
							<?php if( $i%$cols == 1 || $cols == 1) { ?>
							  <div class="row products-row">
							<?php } ?>
								  <div class="col-lg-<?php echo $span;?> col-md-<?php echo $span;?> col-sm-12 col-xs-12 product-col">
								  		<!-- ################ -->
								  		<?php $objlang = $this->registry->get('language');  $ourl = $this->registry->get('url');   ?>



<div class="product-block product-v1 item-full" itemtype="http://schema.org/Product" itemscope>
  <div class="block-img">
    <?php if ($product['thumb']) {    ?>      
      <div class="image">        
        <a class="img" itemprop="url" title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>">
          <?php if( $product['special'] ) {   ?>
          <span class="product-label sale"><span class="product-label-special"><?php echo $objlang->get('text_sale'); ?></span></span>
        <?php } ?>
          <img class="img-responsive" itemprop="image" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
        </a>        
      </div>
    <?php } ?>  
    <div class="action text-center">
      <?php if( !isset($listingConfig['catalog_mode']) || !$listingConfig['catalog_mode'] ) { ?>
      <div class="cart">            
        <button data-loading-text="Loading..." class="btn btn-default btn-inverse border-2" type="button" onclick="cart.addcart('<?php echo $product['product_id']; ?>');">
        <i class="hidden-lg hidden-sm hidden-md fa fa-shopping-cart"></i>
        <span class="hidden-xs"><?php echo $objlang->get('button_cart'); ?></span>
        </button>
      </div>
      <?php } ?>
      <div class="compare">     
      <button class="btn btn-second btn-outline border-2" type="button" data-toggle="tooltip" data-placement="top" title="<?php echo $objlang->get("button_compare"); ?>" onclick="compare.addcompare('<?php echo $product['product_id']; ?>');"><i class="fa fa-refresh"></i></button> 
      </div>  
      <div class="wishlist">
      <button class="btn btn-second btn-outline border-2" type="button" data-toggle="tooltip" data-placement="top" title="<?php echo $objlang->get("button_wishlist"); ?>" onclick="wishlist.addwishlist('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button> 
      </div>      
    </div>
  </div>
         
  <div class="product-meta">
    <div class="header-deals">     
      <h6 class="name" itemprop="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h6>
          <?php if( isset($product['description']) ){ ?> 
      <p class="description" itemprop="description"><?php echo utf8_substr( strip_tags($product['description']),0,220);?>...</p>
      <?php } ?> 

      <div class="clearfix">       
        <?php if ($product['price']) { ?>
        <div class="price pull-left" itemtype="http://schema.org/Offer" itemscope itemprop="offers">
          <?php if (!$product['special']) {  ?>
            <span class="price-new"><?php echo $product['price']; ?></span>
            <?php if( preg_match( '#(\d+).?(\d+)#',  $product['price'], $p ) ) { ?> 
            <meta content="<?php echo $p[0]; ?>" itemprop="price">
            <?php } ?>
          <?php } else { ?>
            <span class="price-new"><?php echo $product['special']; ?></span>
            <span class="price-old"><?php echo $product['price']; ?></span> 
            <?php if( preg_match( '#(\d+).?(\d+)#',  $product['special'], $p ) ) { ?> 
            <meta content="<?php echo $p[0]; ?>" itemprop="price">
            <?php } ?>

          <?php } ?>
          <meta content="<?php // echo $this->currency->getCode(); ?>" itemprop="priceCurrency">
        </div>
        <?php } ?>

        <?php if ( isset($product['rating']) ) { ?>
          <div class="rating pull-right">
            <?php for ($is = 1; $is <= 5; $is++) { ?>
            <?php if ($product['rating'] < $is) { ?>
            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
            <?php } else { ?>
            <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i>
            </span>
            <?php } ?>
            <?php } ?>
          </div>
        <?php } ?>
      </div>
    </div>     
      <div id="item_countdown_<?php echo $product['product_id']; ?>" class="item-countdown clearfix"></div>

  </div>  
</div>

<script type="text/javascript">
  jQuery(document).ready(function($){
    $("#item_countdown_<?php echo $product['product_id']; ?>").lofCountDown({
      formatStyle:2,
      TargetDate:"<?php echo date('m/d/Y G:i:s', strtotime($product['date_end_string'])); ?>",
      DisplayFormat:"<ul class='list-inline'><li>%%D%% <span><?php echo $objlang->get("text_days");?></span></li><li> %%H%% <span><?php echo $objlang->get("text_hours");?></span></li><li> %%M%% <span><?php echo $objlang->get("text_minutes");?></span></li><li> %%S%% <span><?php echo $objlang->get("text_seconds");?></span></li></ul>",
      FinishMessage: "<?php echo $objlang->get('text_finish');?>"
    });
  });
</script>






								  		<!-- ################ -->
								  </div>
						  
						  <?php if( $i%$cols == 0 || $i==count($tproducts) ) { ?>
							 </div>
							<?php } ?>
						<?php } //endforeach; ?>
					</div>
			  <?php } ?>

			</div> 
		</div>



	</div>
</div>
<script type="text/javascript">
$('#pavdeals<?php echo $id;?>').carousel({interval:false,pause:'hover'});
</script>