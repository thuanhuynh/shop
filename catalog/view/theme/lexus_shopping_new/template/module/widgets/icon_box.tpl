<div class="feature-box space-padding-lr-60 <?php echo $addition_cls; ?> <?php echo $icon_box_style;?> <?php echo $text_align;?> <?php echo $background;?>">
    <div class="fbox-icon">
    	<?php if(isset($linkurl) && $linkurl){ ?>
        <a href="<?php echo $linkurl; ?>" title="<?php if(isset($widget_heading)&&!empty($widget_heading)){ echo $widget_heading; } ?>">
        <?php }?>
        	<?php if (isset($iconurl) && $iconfile){ ?>
				<img class="fa" src="<?php echo $iconurl; ?>" alt="">
			<?php }elseif($iconclass){ ?>
				<i class="fa <?php echo $iconclass; ?>"></i>
			<?php }?>
        <?php if(isset($linkurl) && $linkurl){?>
        </a>
        <?php } ?>
    </div>
    <div class="fbox-body">
        <?php if(isset($widget_heading)&&!empty($widget_heading) && $icon_box_style != 'feature-box-v2'){ ?>
		<h6>
			<?php echo $widget_heading; ?>
		</h6>
		<?php } ?>

		<?php if(isset($htmlcontent) && $htmlcontent){ ?>
        <p><?php echo html_entity_decode($htmlcontent, ENT_QUOTES, 'UTF-8'); ?></p>
        <?php } ?>
    </div>
</div>