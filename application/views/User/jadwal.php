<?php
    $this->load->view('User/Layout/Header');
?>
<!-- banner -->
<section class="banner-1">
</section>
<!-- //banner -->

<!-- /services -->
<section class="what_you w3-about py-5">
	<div class="container py-md-4 mt-md-3">
		<h2 class="heading-agileinfo">Jadwal <span>Al Habib Umar Rofiq Bin Ali Al Bin Hamid</span></h2>
		<span class="w3-line black"></span>
		<div class="row about-info-grids mt-md-5 pt-5">
			<!-- ////////////////////////  DATA  ////////////////////////////////// -->
			<?php foreach ($jadwalData as $data) { ?>
			<div class="col-md-4 about-info about-info1 content-pagination" style="padding:15px">
				<div class="list-pagination">
					<img src="<?php echo base_url('assets/user/')?>images/logo/baalawy-brand.png" alt="">
					<h4><?php echo $data['judul'];?></h4>
					<div class="h4-underline"></div>
					<P><?php echo substr($data['isi'], 0, 100)?> <br><strong><?php echo $data['jam']?></strong></P>
					<p><b> <?php $data['keterangan']?> </b></p>
				</div>
			</div>
			<?php }?>
			<!-- ////////////////////////  DATA  ////////////////////////////////// -->
		</div>
	</div>
	<div id="pagination-container"></div>
</section>

<script>
	$(document).ready(function () {
		var items = $(".content-pagination .list-pagination");
		var numItems = items.length;
		var perPage = 6;

		items.slice(perPage).hide();

		$('#pagination-container').pagination({
			items: numItems,
			itemsOnPage: perPage,
			displayedPages: 3,
			edges: 1,
			prevText: "&laquo;",
			nextText: "&raquo;",
			onPageClick: function (pageNumber) {
				var showFrom = perPage * (pageNumber - 1);
				var showTo = showFrom + perPage;
				items.hide().slice(showFrom, showTo).show();
			}
		});
	});
</script>
<?php
    $this->load->view('User/Layout/Footer');
?>