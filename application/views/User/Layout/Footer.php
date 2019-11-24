<div class="copyright py-3">
    <div class="container">
        <div class="copyrighttop">
            <ul>
                <li>
                    <h4>Follow us on:</h4>
                </li>
                <li>
                    <a class="facebook" href="#">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                </li>
                <li>
                    <a class="facebook" href="#">
                        <i class="fab fa-instagram instagram"></i>
                    </a>
                </li>
                <li>
                    <a class="facebook" href="#">
                        <i class="fab fa-youtube-square aaa"></i>
                    </a>
                </li>
            </ul>
        </div>
        <div class="copyrightbottom">
            <p>© MAJELIS JALSATUL IT'SNAIN BAA'ALAWY | Design by
                <a href="#">Feiadnan</a>
            </p>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- js-->
<!-- Banner Responsiveslides -->
<script src="<?php echo base_url('assets/user/')?>js/responsiveslides.min.js"></script>
<script>
// You can also use "$(window).load(function() {"
$(function() {
    // Slideshow 4
    $("#slider3").responsiveSlides({
        auto: true,
        pager: true,
        nav: false,
        speed: 500,
        namespace: "callbacks",
        before: function() {
            $('.events').append("<li>before event fired.</li>");
        },
        after: function() {
            $('.events').append("<li>after event fired.</li>");
        }
    });

});
</script>
<!-- // Banner Responsiveslides -->
<!-- stats -->
<script src="<?php echo base_url('assets/user/')?>js/jquery.waypoints.min.js"></script>
<script src="<?php echo base_url('assets/user/')?>js/jquery.countup.js"></script>
<script>
$('.counter').countUp();
</script>
<!-- //stats -->
<!--pop-up-box -->
<script src="<?php echo base_url('assets/user/')?>js/jquery.magnific-popup.js"></script>
<script src="https://pagination.js.org/dist/2.1.5/pagination.min.js"></script>
<script>
$(document).ready(function() {
    $('.popup-with-zoom-anim').magnificPopup({
        type: 'inline',
        fixedContentPos: false,
        fixedBgPos: true,
        overflowY: 'auto',
        closeBtnInside: true,
        preloader: false,
        midClick: true,
        removalDelay: 300,
        mainClass: 'my-mfp-zoom-in'
    });
});
</script>
<!-- //pop-up-box -->
<!-- Bootstrap Core JavaScript -->
<script src="<?php echo base_url('assets/user/')?>js/bootstrap.js "></script>
<!-- //Bootstrap Core JavaScript -->
</body>

</html>