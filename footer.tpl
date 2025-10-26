                </div><!-- /.main-content -->
                {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                    <div class="col-md-3 pull-md-left sidebar">
                        {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                    </div>
                {/if}
            <div class="clearfix"></div>
        </div>
    </div>
</section>

<!-- Footer Section Start -->
<div class="footer--section">
	<!-- Footer Widgets Start -->
	<div class="footer--widgets pd--80-0-20">
		<div class="container">
			<div class="row AdjustRow">
				<!-- Widget Start -->
				<div class="widget col-md-3 col-xs-6 col-xxs-12">
					<!-- Widget Logo Start -->
					<div class="widget--logo">
						<img src={$WEB_ROOT}/assets/img/logo.png" alt="{$companyname}"width="125" alt="SJM Host">
					</div>
					<!-- Widget Logo End -->

					<!-- About Widget Start -->
					<div class="about--widget">
						<ul class="nav">
							<li>
								<span><i class="icon mright--8 fa fa-map-marker"></i>182-184 High Street North East Ham, London E6 2JA</span>
							</li>

							<li>
								<a href="tel:+966574095987"><i class="icon mright--8 fa fa-phone"></i>+966574095987</a>
							</li>

							<li>
								<a href="mailto:sales@sjmhost.com"><i class="icon mright--8 fa fa-envelope"></i>sales@sjmhost.com</a>
							</li>

							<li>
								<a href="http://sjmhost.com"><i class="icon mright--8 fa fa-globe"></i>sjmhost.com</a>
							</li>
						</ul>
					</div>
					<!-- About Widget End -->
				</div>
				<!-- Widget End -->

				<!-- Widget Start -->
				<div class="widget col-md-3 col-xs-6 col-xxs-12">
					<!-- Widget Title Start -->
					<div class="widget--title">
						<h2 class="h4">Our Services</h2>
					</div>
					<!-- Widget Title End -->

					<!-- Links Widget Start -->
					<div class="links--widget">
						<ul class="nav">
							<li>
								<a href="#"><i class="icon mright--8 fa fa-angle-double-right"></i>Web Hosting</a>
							</li>
							
							<li>
								<a href="#"><i class="icon mright--8 fa fa-angle-double-right"></i>Reseller Hosting</a>
							</li>
							
							<li>
								<a href="#"><i class="icon mright--8 fa fa-angle-double-right"></i>Cloud Hosting</a>
							</li>
							
							<li>
								<a href="#"><i class="icon mright--8 fa fa-angle-double-right"></i>Dedicated Server</a>
							</li>
						</ul>
					</div>
					<!-- Links Widget End -->
				</div>
				<!-- Widget End -->

				<!-- Widget Start -->
				<div class="widget col-md-3 col-xs-6 col-xxs-12">
					<!-- Widget Title Start -->
					<div class="widget--title">
						<h2 class="h4">Our Company</h2>
					</div>
					<!-- Widget Title End -->

					<!-- Links Widget Start -->
					<div class="links--widget">
						<ul class="nav">
							<li>
								<a href="#"><i class="icon mright--8 fa fa-angle-double-right"></i>About Us</a>
							</li>
							
							<li>
								<a href="#"><i class="icon mright--8 fa fa-angle-double-right"></i>Our People</a>
							</li>
							
							<li>
								<a href="#"><i class="icon mright--8 fa fa-angle-double-right"></i>Plans &amp; Pricing</a>
							</li>

							<li>
								<a href="#"><i class="icon mright--8 fa fa-angle-double-right"></i>Careers</a>
							</li>
						</ul>
					</div>
					<!-- Links Widget End -->
				</div>
				<!-- Widget End -->

				<!-- Widget Start -->
				<div class="widget col-md-3 col-xs-6 col-xxs-12">
					<!-- Widget Title Start -->
					<div class="widget--title">
						<h2 class="h4">Support</h2>
					</div>
					<!-- Widget Title End -->

					<!-- Links Widget Start -->
					<div class="links--widget">
						<ul class="nav">
							<li>
								<a href="#"><i class="icon mright--8 fa fa-angle-double-right"></i>Product Support</a>
							</li>
							
							<li>
								<a href="#"><i class="icon mright--8 fa fa-angle-double-right"></i>Contact Us</a>
							</li>
							
							<li>
								<a href="#"><i class="icon mright--8 fa fa-angle-double-right"></i>FAQs</a>
							</li>

							<li>
								<a href="#"><i class="icon mright--8 fa fa-angle-double-right"></i>Live Chat</a>
							</li>
						</ul>
					</div>
					<!-- Links Widget End -->
				</div>
				<!-- Widget End -->
			</div>
		</div>
	</div>
	<!-- Footer Widgets End -->

	<!-- Footer Copyright Start -->
	<div class="footer--copyright">
		<div class="container">
			<p class="float--left">{$date_year} &copy; Copyright Reserved To <a href="#">SJM Host</a>. Designed By <a href="http://themelooks.com/">ThemeLooks</a>.</p> <!-- Designed By Text is Required. Please, do not remove this text otherwise your website won't show. -->

			<img src="{$WEB_ROOT}/templates/{$template}/img/payment-methods.png" alt="" class="float--right">
		</div>
	</div>
	<!-- Footer Copyright End -->

	<!-- Back To Top Button Start -->
	<div class="back-to-top-btn">
		<div class="container">
			<a href="#" data-trigger="AnimateScrollLink" data-target="#body"><i class="fa fa-long-arrow-up"></i>Back</a>
		</div>
	</div>
	<!-- Back To Top Button End -->
</div>
<!-- Footer Section End -->

<!--Start of Tawk.to Script-->
<script type="text/javascript">
	var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
	(function(){
		var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
		s1.async=true;
		s1.src='https://embed.tawk.to/57dfd4b85dc7a25e92808cf6/default';
		s1.charset='UTF-8';
		s1.setAttribute('crossorigin','*');
		s0.parentNode.insertBefore(s1,s0);
	})();
</script>
<!--End of Tawk.to Script-->

<!-- Theme Scripts -->
<script src="{$WEB_ROOT}/templates/{$template}/js/animatescroll.min.js"></script>
<script src="{$WEB_ROOT}/templates/{$template}/js/isotope.min.js"></script>
<script src="{$WEB_ROOT}/templates/{$template}/js/jquery.validate.min.js"></script>
<script src="{$WEB_ROOT}/templates/{$template}/js/main.js"></script>

<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content panel panel-primary">
            <div class="modal-header panel-heading">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title">Title</h4>
            </div>
            <div class="modal-body panel-body">
                Loading...
            </div>
            <div class="modal-footer panel-footer">
                <div class="pull-left loader">
                    <i class="fa fa-circle-o-notch fa-spin"></i> Loading...
                </div>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    Close
                </button>
                <button type="button" class="btn btn-primary modal-submit">
                    Submit
                </button>
            </div>
        </div>
    </div>
</div>

{$footeroutput}

</body>
</html>
