<?php $ckey = time().rand(); ?>
<div class="panel panel-v2 panel-success category">
  <div class="panel-heading bg-success"><h4 class="panel-title"><?php echo $heading_title; ?></h4></div>
  <div class="panel-body tree-menu">
    <ul id="accordion<?php echo $ckey; ?>" class="accordion">
      <?php foreach ($categories as $key => $category) { ?>
      <li class="accordion-group">
        <?php if ($category['category_id'] == $category_id) { ?>
        <a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a>
        <?php } else { ?>
        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        <?php } ?>
        <?php if ($category['children']) { ?>
        <div class="accordion-heading pull-right">
            <span data-toggle="collapse" data-parent="#accordion<?php echo $key.$ckey; ?>" data-target="#collapse_<?php echo $key.$ckey ;?>" class="bg"><i class='fa fa-angle-down'></i></span>
        </div>
        
        <ul id="collapse_<?php echo $key.$ckey ;?>" class="collapse accordion-body <?php if($category['category_id'] == $category_id) echo "in"; ?>">
          <?php foreach ($category['children'] as $child) { ?>
          <li>
            <?php if ($child['category_id'] == $child_id) { ?>
            <a href="<?php echo $child['href']; ?>" class="active"><?php echo $child['name']; ?></a>
            <?php } else { ?>
            <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
            <?php } ?>
          </li>
          <?php } ?>
        </ul>
        <?php } ?>
      </li>
      <?php } ?>
    </ul>
  </div>
</div>
<script type="text/javascript">
    $(document).ready(function(){
        var active = $('.collapse.in').attr('id');
        $('span[data-target=#'+active+']').html("<i class='fa fa-minus'></i>");

        $('.collapse').on('show.bs.collapse', function () {
            $('span[data-target=#'+$(this).attr('id')+']').html("<i class='fa fa-minus'></i>");
        });
        $('.collapse').on('hide.bs.collapse', function () {
            $('span[data-target=#'+$(this).attr('id')+']').html("<i class='fa fa-plus'></i>");
        });
    });
</script>

