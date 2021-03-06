<?php
    $this->load->view('User/Layout/Header');
?>


<!-- banner -->
<section class="banner-1">
</section>
<!-- //banner -->


<!-- tausiah -->
<section class="typo py-5 tausiah">
	<div class="container">
		<div class="row">
			<!-- Latest Posts -->
			<main class="posts-listing col-lg-8">
				<div class="container">
					<div class="row">

						<!-- ///////////// DATA /////////// -->
						<?php foreach ($tausiahData as $data) { ?>
						<!-- post-->

						<div class="post col-xl-6 content-pagination">
							<div class="list-pagination">
								<div class="post-thumbnail"><a href="post.html"><img src="<?php echo base_url('assets/admin/img/tausiah/' . $data['image'])?>" alt="..." class="tausiah-foto" style="width:100%; height:19rem;"></a></div>
								<div class="post-details">
									<div class="post-meta d-flex justify-content-between">
										<div class="date meta-last">
											<?php echo date_format(date_create($data['updated_at']),"d M Y")?></div>
										<div class="category"><a href="#"><?php echo $data['kitab']?></a></div>
                                    </div>
                                    <a href="post.html">
										<h3 class=""><?php echo $data['judul']?></h3>
									</a>
									<p class="text"><?php echo substr($data['content'], 0, 100)?></p>
									<div class="post-footer d-flex align-items-center">
										<a href="#" class="author d-flex align-items-center flex-wrap">
											<div class="avatar"><img src="<?php echo base_url('assets/user/')?>images/user-def.png" alt="..." class="img-fluid" style="width:30px; height:30px;"></div>
											<div class="title" style="margin-left:-10px">
                                                <span><?php echo $data['username']?></span>
                                            </div>
										</a>
									</div>
								</div>
							</div>
						</div>
						<?php }?>
						<!-- ///////////// DATA /////////// -->
					</div>
					<div id="pagination-container"></div>
				</div>
			</main>
			<aside class="col-lg-4">
				<!-- Widget [Search Bar Widget]-->
				<style>
					.widget.search {
						margin-top: 0px;
					}

					@media (max-width: 576px) {
						.widget.search {
							margin-top: -150px;
						}
					}
				</style>

				<div class="widget search">
					<header>
						<h3 class="h6">Search the blog</h3>
					</header>
					<form action="#" class="search-form">
						<div class="form-group">
							<input type="search" placeholder="What are you looking for?">
							<button type="submit" class="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
						</div>
					</form>
				</div>
				<!-- Widget [Latest Posts Widget]        -->
				<div class="widget latest-posts">
					<header>
						<h3 class="h6">Latest Posts</h3>
					</header>
					<div class="blog-posts"><a href="#">
							<div class="item d-flex align-items-center">
								<div class="image"><img src="<?php echo base_url('assets/user/')?>images/small-thumbnail-1.jpg" alt="..." class="img-fluid"></div>
								<div class="title"><strong>Alberto Savoia Can Teach You About</strong>
									<div class="d-flex align-items-center">
										<div class="views"><i class="icon-eye"></i> 500</div>
										<div class="comments"><i class="icon-comment"></i>12</div>
									</div>
								</div>
							</div>
						</a><a href="#">
							<div class="item d-flex align-items-center">
								<div class="image"><img src="<?php echo base_url('assets/user/')?>images/small-thumbnail-2.jpg" alt="..." class="img-fluid"></div>
								<div class="title"><strong>Alberto Savoia Can Teach You About</strong>
									<div class="d-flex align-items-center">
										<div class="views"><i class="icon-eye"></i> 500</div>
										<div class="comments"><i class="icon-comment"></i>12</div>
									</div>
								</div>
							</div>
						</a><a href="#">
							<div class="item d-flex align-items-center">
								<div class="image"><img src="<?php echo base_url('assets/user/')?>images/small-thumbnail-3.jpg" alt="..." class="img-fluid"></div>
								<div class="title"><strong>Alberto Savoia Can Teach You About</strong>
									<div class="d-flex align-items-center">
										<div class="views"><i class="icon-eye"></i> 500</div>
										<div class="comments"><i class="icon-comment"></i>12</div>
									</div>
								</div>
							</div>
						</a></div>
				</div>
				<!-- Widget [Categories Widget]-->
				<div class="widget categories">
					<header>
						<h3 class="h6">Categories</h3>
					</header>
					<div class="item d-flex justify-content-between"><a href="#">Bidayatul Hidayah</a><span>12</span></div>
					<div class="item d-flex justify-content-between"><a href="#">Aqidatul Awam</a><span>25</span> </div>
					<div class="item d-flex justify-content-between"><a href="#">Nashoih Diniyah</a><span>8</span> </div>
					<div class="item d-flex justify-content-between"><a href="#">Ihya Ulumuddin</a><span>17</span> </div>
					<div class="item d-flex justify-content-between"><a href="#">Riyadhus Shalihin</a><span>25</span></div>
					<div class="item d-flex justify-content-between"><a href="#">Syarah Ratibul Haddad</a><span>25</span></div>
					<div class="item d-flex justify-content-between"><a href="#">Syarah Hadits Jibril</a><span>25</span></div>
				</div>
				<!-- Widget [Tags Cloud Widget]-->
				<div class="widget tags">
					<header>
						<h3 class="h6">Tags</h3>
					</header>
					<ul class="list-inline">
						<li class="list-inline-item"><a href="#" class="tag">#Business</a></li>
						<li class="list-inline-item"><a href="#" class="tag">#Technology</a></li>
						<li class="list-inline-item"><a href="#" class="tag">#Fashion</a></li>
						<li class="list-inline-item"><a href="#" class="tag">#Sports</a></li>
						<li class="list-inline-item"><a href="#" class="tag">#Economy</a></li>
					</ul>
				</div>
			</aside>
		</div>
	</div>
</section>
<!--end tausiah-->
<script>
	$(document).ready(function () {
		var items = $(".content-pagination .list-pagination");
		var numItems = items.length;
		var perPage = 4;

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