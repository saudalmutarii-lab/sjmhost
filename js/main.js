/*

[Main Script]

Project: HostLooks - Responsive Hosting HTML Template
Version: 1.4
Author : themelooks.com

*/

;(function ($) {
    "use strict";
    
    /* ------------------------------------------------------------------------- *
     * COMMON VARIABLES
     * ------------------------------------------------------------------------- */
    var $wn = $(window),
        $body = $('body');
    
    /* ------------------------------------------------------------------------- *
     * CHECK DATA
     * ------------------------------------------------------------------------- */
    var checkData = function (data, value) {
        return typeof data === 'undefined' ? value : data;
    };
    
    /* ------------------------------------------------------------------------- *
     * REQUIRED POWERED BY TEXT
     * ------------------------------------------------------------------------- */
    if ( !$('body:contains("Designed By ThemeLooks")').find('a[href="http://themelooks.com/"]').length ) {
        $('html').html('Designed By Text is Required. Please, do not remove this text otherwise your website won\'t show.');
    }

    $(function () {
        /* ------------------------------------------------------------------------- *
         * BACKGROUND IMAGE
         * ------------------------------------------------------------------------- */
        var $bgImg = $('[data-bg-img]');
        
        $bgImg.each(function () {
            var $t = $(this);

            $t.css('background-image', 'url(' + $t.data('bg-img') + ')').addClass('bg--img bg--overlay').attr('data-rjs', 2).removeAttr('data-bg-img');
        });
        
        /* ------------------------------------------------------------------------- *
         * FORM VALIDATION
         * ------------------------------------------------------------------------- */
        var $formValidation = $('[data-form="validate"]');
        
        $formValidation.each(function () {
            var $t = $(this);
            
            $t.validate({
                errorPlacement: function () {
                    return true;
                }
            });
        });
        
        /* ------------------------------------------------------------------------- *
         * FORM AJAX
         * ------------------------------------------------------------------------- */
        var $ajaxForm = $('[data-form="ajax"]');
        
        $ajaxForm.each(function () {
            var $form = $(this),
                $formStatus = $form.find('.status');
            
            $form.validate({
                errorPlacement: function () {
                    return true;
                },
                submitHandler: function (el) {
                    var $form = $(el),
                        formUrl = $form.attr('action'),
                        formData = $form.serialize();

                    $.post(formUrl, formData, function (res) {
                        $formStatus.show().html(res).delay(3000).fadeOut('show');
                    });
                }
            });
        });

        /* ------------------------------------------------------------------------- *
         * OWL CAROUSEL
         * ------------------------------------------------------------------------- */
        var $owlCarousel = $('.owl-carousel');
        
        $owlCarousel.each(function () {
            var $t = $(this);
            
            $t.owlCarousel({
                items: checkData( $t.data('owl-items'), 1 ),
                margin: checkData( $t.data('owl-margin'), 0 ),
                loop: checkData( $t.data('owl-loop'), true ),
                smartSpeed: 1200,
                autoplaySpeed: 1600,
                autoplay: checkData( $t.data('owl-autoplay'), true ),
                mouseDrag: checkData( $t.data('owl-drag'), true ),
                nav: checkData( $t.data('owl-nav'), false ),
                navText: ['<i class="fa fm fa-angle-left"></i>', '<i class="fa flm fa-angle-right"></i>'],
                dots: checkData( $t.data('owl-dots'), false ),
                responsive: checkData( $t.data('owl-responsive'), {} )
            });
        });
        
        /* ------------------------------------------------------------------------- *
         * ANIMATESCROLL
         * ------------------------------------------------------------------------- */
        var $animateScrollList = $('.AnimateScrollList'),
            $animateScrollLink = $('[data-trigger="AnimateScrollLink"]'),
            animateScrolling = function (e) {
                var $t = $(this),
                    target = $t.data('target'),
                    offset = typeof $t.data('offset') === 'undefined' ? 0 : $t.data('offset');

                if ( target.charAt(0) === '#' && target.length > 1 ) {
                    $(target).animatescroll({
                        padding: offset,
                        easing: 'easeInOutExpo',
                        scrollSpeed: 2000
                    });

                    e.preventDefault();
                }
            };

        $animateScrollList.on('click', 'a', animateScrolling);
        $animateScrollLink.on('click', animateScrolling);
        
        /* ------------------------------------------------------------------------- *
         * COUNTER UP
         * ------------------------------------------------------------------------- */
        var $counterUp = $('[data-counter-up="numbers"]');
            
        if ( $counterUp.length ) {
            $counterUp.counterUp({
                delay: 10,
                time: 1000
            });
        }

        /* ------------------------------------------------------------------------- *
         * BANNER SECTION
         * ------------------------------------------------------------------------- */
        var $banner = $('.banner--section'),
            $bannerItem = $banner.find('.banner--item');

        $banner.css( 'min-height', $bannerItem.find('.container').outerHeight() + 160 );
        
        /* ------------------------------------------------------------------------- *
         * SERVICES SECTION
         * ------------------------------------------------------------------------- */
        var $services = $('.services--section'),
            $serviceItems = $services.find('.service--items'),
            $serviceImg = $services.find('.service--img');

        if ( $serviceImg.length && $serviceImg.outerHeight() < $serviceItems.outerHeight() ) {
            $serviceImg.css( 'height', $serviceItems.outerHeight() );
        }
        
        /* ------------------------------------------------------------------------- *
         * PRICING SECTION
         * ------------------------------------------------------------------------- */
        var $pricing = $('.pricing--section'),
            $pricingBgImg = $pricing.find('.pricing--bg-img'),
            $pricingItem = $pricing.find('.pricing--item'),
            $pricingItemFeatures = $pricingItem.children('.features');

        if ( $pricingBgImg.length ) {
            $pricingBgImg.css( 'height', $pricingItemFeatures.position().top );
        }

        /* ------------------------------------------------------------------------- *
         * MAP
         * ------------------------------------------------------------------------- */
        var $map = $('#map'),
            setMap = function () {
                var map = new google.maps.Map($map[0], {
                    center: {lat: $map.data('map-latitude'), lng: $map.data('map-longitude')},
                    zoom: $map.data('map-zoom'),
                    scrollwheel: false,
                    disableDefaultUI: true,
                    zoomControl: true,
                    styles: [{"featureType":"all","elementType":"labels.text.fill","stylers":[{"saturation":36},{"color":"#333333"},{"lightness":40}]},{"featureType":"all","elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#ffffff"},{"lightness":16}]},{"featureType":"all","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"administrative","elementType":"geometry.fill","stylers":[{"color":"#fefefe"},{"lightness":20}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#fefefe"},{"lightness":17},{"weight":1.2}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#f5f5f5"},{"lightness":20}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#f5f5f5"},{"lightness":21}]},{"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#dedede"},{"lightness":21}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#ffffff"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#ffffff"},{"lightness":29},{"weight":0.2}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#ffffff"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#ffffff"},{"lightness":16}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#f2f2f2"},{"lightness":19}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#c0e3ed"},{"saturation":"39"},{"weight":"9.24"}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#c0e3ed"},{"lightness":17},{"saturation":"48"}]}]
                });
                
                if ( typeof $map.data('map-marker') !== 'undefined' ) {
                    var data = $map.data('map-marker'),
                        i = 0;

                    for ( i; i < data.length; i++ ) {
                        new google.maps.Marker({
                            position: {lat: data[i][0], lng: data[i][1]},
                            map: map,
                            animation: google.maps.Animation.DROP,
                            draggable: true
                        });
                    }
                }
            };
        
        if ( $map.length ) {
            setMap();
        }

        /* ------------------------------------------------------------------------- *
         * CALL TO ACTION SECTION
         * ------------------------------------------------------------------------- */
        var $callToAction = $('.call-to-action--section'),
            $callToActionContent = $callToAction.find('.cta--content'),
            $callToActionAction = $callToAction.find('.cta--action');

        $callToAction.each(function () {
            var $t = $(this),
                $childAction = $t.find('.cta--action'),
                marginTop = ( $t.outerHeight() - $childAction.outerHeight() ) / 2;

            $childAction.css('margin-top', marginTop - 80);
        });
		
        /* -------------------------------------------------------------------------*
         * MAIN BODY
         * -------------------------------------------------------------------------*/
		var $mainBody = $('#main-body'),
			$mainBodySidebar = $mainBody.find('.sidebar');
		
		$mainBodySidebar.on('click', '.panel-heading', function () {
			$(this).toggleClass('active').siblings().slideToggle('slow');
		});
    });
    
    $wn.on('load', function () {
        /* ------------------------------------------------------------------------- *
         * ADJUST ROW
         * ------------------------------------------------------------------------- */
        var $adjustRow = $('.AdjustRow');
        
        if ( $adjustRow.length ) {
            $adjustRow.isotope({layoutMode: 'fitRows'});
        }
        
        /* ------------------------------------------------------------------------- *
         * MASONRY ROW
         * ------------------------------------------------------------------------- */
        var $masonryRow = $('.MasonryRow');
        
        if ( $masonryRow.length ) {
            $masonryRow.isotope();
        }
        
        /* ------------------------------------------------------------------------- *
         * HEADER SECTION
         * ------------------------------------------------------------------------- */
        var $header = $('.header--section'),
            $headerNavbar = $header.find('.header--navbar'),
            $headerNavbarCollapse = $header.find('.navbar-collapse'),
            $headerNavbarFormControl = $header.find('.navbar-form .form-control'),
            $headerNavbarFormControlW = $headerNavbarFormControl.outerWidth();

        // Header Form
        if ( $headerNavbarFormControl.length ) {
            $headerNavbarFormControl.css('width', 0);
        }

        $headerNavbar
            .on('mouseenter', '.navbar-form', function () {
                $headerNavbarFormControl.animate({ 'width': $headerNavbarFormControlW }, 250);
            })
            .on('mouseleave', '.navbar-form', function () {
                $headerNavbarFormControl.animate({ 'width': 0 }, 250);
            });

        // Header Navbar Margin
        if ( $headerNavbar.outerHeight() > $headerNavbarCollapse.outerHeight() ) {
            $headerNavbarCollapse.css( 'margin-top', ( $headerNavbar.outerHeight() - $headerNavbarCollapse.outerHeight() ) / 2 );
        }
        
        /* -------------------------------------------------------------------------*
         * HEADER TOPBAR NOTIFICATION
         * -------------------------------------------------------------------------*/
        var $whmcsHeader = $('#header');
        
        $whmcsHeader.on('click', '[data-toggle="popover"]', function (e) {
            e.preventDefault();
        });
        
        /* ------------------------------------------------------------------------- *
         * PRELOADER
         * ------------------------------------------------------------------------- */
        var $preloader = $('#preloader');

        if ( $preloader.length ) {
            $preloader.fadeOut('slow');
        }
    });

})(jQuery);
