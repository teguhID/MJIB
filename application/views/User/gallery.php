<?php $basedir = realpath(__DIR__); include($basedir . "..\Layout\Header.php");?>
<link href="<?php echo base_url('assets/user/')?>css/custom.css" rel='stylesheet' type='text/css' />

<!-- banner -->
<section class="banner-1">
</section>
<!-- //banner -->


<!--gallery-->
<section class="gallery py-5">
    <div class="container py-md-4 mt-md-3">
        <h2 class="heading-agileinfo">Gallery<span>Our Gallery</span></h2>
        <span class="w3-line black"></span>

        <br><br>
        <!--Accordion-->
        <style>
        /* Style the buttons that are used to open and close the accordion panel */
        .accordion {
            background-color: #8fb7a5;
            color: #FFF;
            cursor: pointer;
            padding: 18px;
            width: 100%;
            text-align: left;
            border: 1px solid white;
            outline: none;
            transition: 0.4s;
            font: 20px Lato, sans-serif;
        }

        /* Add a background color to the button if it is clicked on (add the .active class with JS), and when you move the mouse over it (hover) */
        .active,
        .accordion:hover {
            background-color: #527e6a;
        }

        /* Style the accordion panel. Note: hidden by default */
        .panel {
            padding: 0 18px;
            background-color: white;
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.2s ease-out;
        }

        p {
            font: 16px Lato, sans-serif;
        }

        .accordion:after {
            content: '\02795';
            /* Unicode character for "plus" sign (+) */
            font-size: 13px;
            float: right;
            margin-left: 5px;
        }

        .active:after {
            content: "\2796";
            /* Unicode character for "minus" sign (-) */
        }
        </style>
        <button class="accordion">Maulid Nabi</button>
        <div class="panel">
            <div class="row gallery-info mt-md-5 pt-5">
                <div class="col-md-3 col-sm-6 gallery-grids">
                    <a href="images/g3.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                        <img src="<?php echo base_url('assets/user/')?>images/g3.jpg" alt="" class="img-fluid zoom-img">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 gallery-grids">
                    <a href="images/g4.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                        <img src="<?php echo base_url('assets/user/')?>images/g4.jpg" alt="" class="img-fluid zoom-img">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 gallery-grids">
                    <a href="images/g5.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                        <img src="<?php echo base_url('assets/user/')?>images/g5.jpg" alt="" class="img-fluid zoom-img">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 gallery-grids">
                    <a href="images/g6.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                        <img src="<?php echo base_url('assets/user/')?>images/g6.jpg" alt="" class="img-fluid zoom-img">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 gallery-grids">
                    <a href="images/g7.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                        <img src="<?php echo base_url('assets/user/')?>images/g7.jpg" alt="" class="img-fluid zoom-img">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 gallery-grids">
                    <a href="images/g8.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                        <img src="<?php echo base_url('assets/user/')?>images/g8.jpg" alt="" class="img-fluid zoom-img">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 gallery-grids">
                    <a href="images/g9.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                        <img src="<?php echo base_url('assets/user/')?>images/g9.jpg" alt="" class="img-fluid zoom-img">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 gallery-grids">
                    <a href="images/g1.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                        <img src="<?php echo base_url('assets/user/')?>images/g1.jpg" alt="" class="img-fluid zoom-img">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 gallery-grids">
                    <a href="images/g2.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                        <img src="<?php echo base_url('assets/user/')?>images/g2.jpg" alt="" class="img-fluid zoom-img">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 gallery-grids">
                    <a href="images/g3.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                        <img src="<?php echo base_url('assets/user/')?>images/g3.jpg" alt="" class="img-fluid zoom-img">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 gallery-grids">
                    <a href="images/g4.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                        <img src="<?php echo base_url('assets/user/')?>images/g4.jpg" alt="" class="img-fluid zoom-img">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 gallery-grids">
                    <a href="images/g5.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                        <img src="<?php echo base_url('assets/user/')?>images/g5.jpg" alt="" class="img-fluid zoom-img">
                    </a>
                </div>
            </div>

            <button class="accordion">Isra' Mi'raj</button>
            <div class="panel">
                <div class="row gallery-info mt-md-5 pt-5">
                    <div class="col-md-3 col-sm-6 gallery-grids">
                        <a href="images/g3.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                            <img src="<?php echo base_url('assets/user/')?>images/g3.jpg" alt=""
                                class="img-fluid zoom-img">
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-6 gallery-grids">
                        <a href="images/g4.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                            <img src="<?php echo base_url('assets/user/')?>images/g4.jpg" alt=""
                                class="img-fluid zoom-img">
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-6 gallery-grids">
                        <a href="images/g5.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                            <img src="<?php echo base_url('assets/user/')?>images/g5.jpg" alt=""
                                class="img-fluid zoom-img">
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-6 gallery-grids">
                        <a href="images/g6.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                            <img src="<?php echo base_url('assets/user/')?>images/g6.jpg" alt=""
                                class="img-fluid zoom-img">
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-6 gallery-grids">
                        <a href="images/g7.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                            <img src="<?php echo base_url('assets/user/')?>images/g7.jpg" alt=""
                                class="img-fluid zoom-img">
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-6 gallery-grids">
                        <a href="images/g8.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                            <img src="<?php echo base_url('assets/user/')?>images/g8.jpg" alt=""
                                class="img-fluid zoom-img">
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-6 gallery-grids">
                        <a href="images/g9.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                            <img src="<?php echo base_url('assets/user/')?>images/g9.jpg" alt=""
                                class="img-fluid zoom-img">
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-6 gallery-grids">
                        <a href="images/g1.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                            <img src="<?php echo base_url('assets/user/')?>images/g1.jpg" alt=""
                                class="img-fluid zoom-img">
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-6 gallery-grids">
                        <a href="images/g2.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                            <img src="<?php echo base_url('assets/user/')?>images/g2.jpg" alt=""
                                class="img-fluid zoom-img">
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-6 gallery-grids">
                        <a href="images/g3.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                            <img src="<?php echo base_url('assets/user/')?>images/g3.jpg" alt=""
                                class="img-fluid zoom-img">
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-6 gallery-grids">
                        <a href="images/g4.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                            <img src="<?php echo base_url('assets/user/')?>images/g4.jpg" alt=""
                                class="img-fluid zoom-img">
                        </a>
                    </div>
                    <div class="col-md-3 col-sm-6 gallery-grids">
                        <a href="images/g5.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                            <img src="<?php echo base_url('assets/user/')?>images/g5.jpg" alt=""
                                class="img-fluid zoom-img">
                        </a>
                    </div>
                </div>

                <button class="accordion">Section 3</button>
                <div class="panel">
                    <div class="row gallery-info mt-md-5 pt-5">
                        <div class="col-md-3 col-sm-6 gallery-grids">
                            <a href="images/g3.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                                <img src="<?php echo base_url('assets/user/')?>images/g3.jpg" alt=""
                                    class="img-fluid zoom-img">
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 gallery-grids">
                            <a href="images/g4.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                                <img src="<?php echo base_url('assets/user/')?>images/g4.jpg" alt=""
                                    class="img-fluid zoom-img">
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 gallery-grids">
                            <a href="images/g5.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                                <img src="<?php echo base_url('assets/user/')?>images/g5.jpg" alt=""
                                    class="img-fluid zoom-img">
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 gallery-grids">
                            <a href="images/g6.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                                <img src="<?php echo base_url('assets/user/')?>images/g6.jpg" alt=""
                                    class="img-fluid zoom-img">
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 gallery-grids">
                            <a href="images/g7.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                                <img src="<?php echo base_url('assets/user/')?>images/g7.jpg" alt=""
                                    class="img-fluid zoom-img">
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 gallery-grids">
                            <a href="images/g8.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                                <img src="<?php echo base_url('assets/user/')?>images/g8.jpg" alt=""
                                    class="img-fluid zoom-img">
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 gallery-grids">
                            <a href="images/g9.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                                <img src="<?php echo base_url('assets/user/')?>images/g9.jpg" alt=""
                                    class="img-fluid zoom-img">
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 gallery-grids">
                            <a href="images/g1.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                                <img src="<?php echo base_url('assets/user/')?>images/g1.jpg" alt=""
                                    class="img-fluid zoom-img">
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 gallery-grids">
                            <a href="images/g2.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                                <img src="<?php echo base_url('assets/user/')?>images/g2.jpg" alt=""
                                    class="img-fluid zoom-img">
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 gallery-grids">
                            <a href="images/g3.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                                <img src="<?php echo base_url('assets/user/')?>images/g3.jpg" alt=""
                                    class="img-fluid zoom-img">
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 gallery-grids">
                            <a href="images/g4.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                                <img src="<?php echo base_url('assets/user/')?>images/g4.jpg" alt=""
                                    class="img-fluid zoom-img">
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 gallery-grids">
                            <a href="images/g5.jpg" class="gallery-box" data-lightbox="example-set" data-title="">
                                <img src="<?php echo base_url('assets/user/')?>images/g5.jpg" alt=""
                                    class="img-fluid zoom-img">
                            </a>
                        </div>
                    </div>

                    <script type="text/javascript">
                    var acc = document.getElementsByClassName("accordion");
                    var i;

                    for (i = 0; i < acc.length; i++) {
                        acc[i].addEventListener("click", function() {
                            this.classList.toggle("active");
                            var panel = this.nextElementSibling;
                            if (panel.style.maxHeight) {
                                panel.style.maxHeight = null;
                            } else {
                                panel.style.maxHeight = panel.scrollHeight + "px";
                            }
                        });
                    }
                    </script>


                    <!--end Accordion-->


                </div>
                <script src="<?php echo base_url('assets/user/')?>js/lightbox-plus-jquery.min.js"></script>
            </div>
</section>
<!--//gallery-->

<?php $basedir = realpath(__DIR__); include($basedir . "..\Layout\Footer.php");?>