<?php

if (!empty($pavreassurances)) { ?>
		<div class="box-module-pavreassurances box <?php echo $prefix_class ?>">
				<div class="row">
						<?php $i=1?>
						<?php foreach ($pavreassurances as $reassurance) { ?>
							<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 column">
								<div class="reassurances-center space-padding-tb-40">
									<span class="icon-name fa <?php echo $reassurance['select_icon'] ?>"></span>
									<div class="description">
										<h4><?php echo $reassurance['title']; ?></h4>
										<?php echo htmlspecialchars_decode($reassurance['caption']); ?>
										<!-- Button trigger modal -->
										<button type="button" class="button" data-toggle="modal" data-target="#myModal<?php echo $i;?>"><i class="fa fa-long-arrow-right"></i></button>
										<div class="mask" style="display:none;">
											<?php echo htmlspecialchars_decode($reassurance['detail']); ?>
										</div>
									</div>
								</div>
							</div>
							<!-- Modal -->
							<div class="modal fade" id="myModal<?php echo $i;?>" tabindex="-1" role="dialog" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <span class="icon-name fa <?php echo $reassurance['select_icon'] ?>"></span>
							        <h4><?php echo $reassurance['title']; ?></h4>
							        <?php echo htmlspecialchars_decode($reassurance['caption']); ?>
							      </div>
							      <div class="modal-body">
							       		<?php echo htmlspecialchars_decode($reassurance['detail']); ?>
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="button" data-dismiss="modal">Close</button>
							      </div>
							    </div>
							  </div>
							</div>
							<?php $i++;?>
						<?php } ?>
				</div>
		</div>
	<?php } ?>
