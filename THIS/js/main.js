// menu scroll button functions
    $(".home-menu").click(function() {
        $('html,body').animate({
            scrollTop: $(".page-welcome").offset().top
        }, 'slow')
    })

    $(".about-menu").click(function() {
        $('html,body').animate({
            scrollTop: $(".page-about").offset().top
        }, 'slow')
    })

    $(".help-menu").click(function() {
        $('html,body').animate({
            scrollTop: $(".page-help").offset().top
        }, 'slow')
    })

    $(".team-menu").click(function() {
        $('html,body').animate({
            scrollTop: $(".page-team").offset().top
        }, 'slow')
    })
    
    $(".join-menu").click(function() {
        $('html,body').animate({
            scrollTop: $(".page-careers").offset().top
        }, 'slow')
    })

    $(".contact-menu").click(function() {
        $('html,body').animate({
            scrollTop: $(".page-contact").offset().top
        }, 'slow')
    })