<?php  echo $header; ?> <?php require( ThemeControlHelper::getLayoutPath( 'common/mass-header.tpl' )  ); ?>
<div class="main-columns container space-20">
    
  <div class="container-inside bg-white">
  <div class="row"><?php if( $SPAN[0] ): ?>
			<aside id="sidebar-left" class="col-md-<?php echo $SPAN[0];?>">
				<?php echo $column_left; ?>
			</aside>	
		<?php endif; ?> 
  
   <div id="sidebar-main" class="col-md-<?php echo $SPAN[1];?>"><div id="content"><?php echo $content_top; ?>
   <div class="well">
      <h1 class="page-title"><?php echo $heading_title; ?></h1>
      <?php if ($recurrings) { ?>
      <div class="table-responsive">
        <table class="table table-bordered table-hover">
          <thead>
            <tr>
              <td class="text-left"><?php echo $column_recurring_id; ?></td>
              <td class="text-left"><?php echo $column_date_added; ?></td>
              <td class="text-left"><?php echo $column_status; ?></td>
              <td class="text-left"><?php echo $column_product; ?></td>
              <td class="text-right"><?php echo $column_action; ?></td>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($recurrings as $recurring) { ?>
              <tr>
                <td class="text-left">#<?php echo $recurring['id']; ?></td>
                <td class="text-left"><?php echo $recurring['date_added']; ?></td>
                <td class="text-left"><?php echo $status_types[$recurring['status']]; ?></td>
                <td class="text-left"><?php echo $recurring['name']; ?></td>
                <td class="text-right"><a href="<?php echo $recurring['href']; ?>"><img src="catalog/view/theme/default/image/info.png" alt="<?php echo $button_view; ?>" title="<?php echo $button_view; ?>" /></a></td>
              </tr>
            <?php } ?>
          </tbody>
        </table>
      </div>
      <div class="text-right"><?php echo $pagination; ?></div>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
      <div class="buttons clearfix">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-default"><?php echo $button_continue; ?></a></div>
      </div>
      </div><?php echo $content_bottom; ?>
   </div> 
   </div> 
<?php if( $SPAN[2] ): ?>
	<aside id="sidebar-right" class="col-md-<?php echo $SPAN[2];?>">	
		<?php echo $column_right; ?>
	</aside>
<?php endif; ?></div>
</div>
</div>
<?php echo $footer; ?>