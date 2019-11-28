<?php $basedir = realpath(__DIR__); include($basedir . "..\Layout\Header.php");?>


<!-- banner -->
<section class="banner-1">
</section>
<!-- //banner -->


<!--gallery-->
<section class="audio py-5">
    <div class="container py-md-4 mt-md-3">
        <h2 class="heading-agileinfo">Audio<span>Our Audio Collection</span></h2>
        <span class="w3-line black"></span>

        <br><br>
        <!--Accordion-->
        <button class="accordion">Qosidah/Sholawat</button>
        <div class="panel audio-list">
            <div class="audio-list qosidah">
                <p>1. Qosidah Qoro'nafi dhuha - Muhammad Qolbi</p>
                <audio controls>
                    <source src="<?php echo base_url('assets/user/')?>audio/Qoro'nafi.mp3" type="audio/mp3">
                </audio><br>
                <p>2. Qosidah Man Ana Laulakum - Majelis Rasulullah</p>
                <audio controls>
                    <source src="<?php echo base_url('assets/user/')?>audio/ManAna.mp3" type="audio/mp3">
                </audio><br>
            </div>
        </div>
        <br>
        <button class="accordion">Ceramah/Tausiah Habibana Umar Rofiq Bin Ali Al Bin Hamid</button>
        <div class="panel">
            <div class="audio-list ceramah">
                <p>1. Fadhilah Surat Al Waqi'ah</p>
                <audio controls>
                    <source src="<?php echo base_url('assets/user/')?>audio/Habibumarrofiq/Fadilah-surat-alwaqi'ah.mp3"
                        type="audio/mp3">
                </audio><br>
                <p>2. Tanda Bukti Cinta Kepada Nabi Muhammad</p>
                <audio controls>
                    <source
                        src="<?php echo base_url('assets/user/')?>audio/Habibumarrofiq/Bukti-cinta-kepada-nabi-muhammad.mp3"
                        type="audio/mp3">
                </audio><br>
            </div>
        </div>
        <br>
        <button class="accordion">Untaian Hikmah/Kalam Ulama</button>
        <div class="panel">
            <div class="audio-list kalam">
                <p>1. Apapun Masalahmu Serahkan Kepada Allah | Habib Umar bin Hafidz</p>
                <audio controls>
                    <source
                        src="<?php echo base_url('assets/user/')?>audio/Kalamulama/Apapun-masalahmu-serahkan-kepada-allah.mp3"
                        type="audio/mp3">
                </audio><br>
                <p>2. Ciri Orang Yang Jauh Dengan Allah SWT | Habib Mundzir Al Musawwa</p>
                <audio controls>
                    <source
                        src="<?php echo base_url('assets/user/')?>audio/Kalamulama/Ciri-orang-yang-jauh-dengan-allah.mp3"
                        type="audio/mp3">
                </audio><br>
            </div>
        </div>




        <script type="text/javascript">
        var acc = document.getElementsByClassName("accordion");
        var i;

        for (i = 0; i < acc.length; i++) {
            acc[i].addEventListener("click", function() {
                this.classList.toggle("activee");
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



        <script src="<?php echo base_url('assets/user/')?>js/lightbox-plus-jquery.min.js"></script>
    </div>
    </div>
    </div>
</section>
<!--//gallery-->

<?php $basedir = realpath(__DIR__); include($basedir . "..\Layout\Footer.php");?>