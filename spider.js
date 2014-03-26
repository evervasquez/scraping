var page = new WebPage(),
        url = 'http://www.movistar.com.pe/tv/programacion/guia-de-programacion',
        stepIndex = 0;

page.onConsoleMessage = function(msg, line, source) {
    console.log('console> ' + msg);
};

/**
 * From PhantomJS documentation:
 * This callback is invoked when there is a JavaScript alert. The only argument passed to the callback is the string for the message.
 */
page.onAlert = function(msg) {
    console.log('alert!!> ' + msg);
};

// Callback is executed each time a page is loaded...
page.open(url, function(status) {
    if (status === 'success') {
        // State is initially empty. State is persisted between page loads and can be used for identifying which page we're on.
        console.log('============================================');
        console.log('Step "' + stepIndex + '"');
        console.log('============================================');

        // Inject jQuery for scraping (you need to save jquery-1.6.1.min.js in the same folder as this file)
        page.injectJs('jquery-1.6.1.min.js');

        // Our "event loop"
        if (!phantom.state) {
            initialize();
        } else {
            phantom.state();
        }

        // Save screenshot for debugging purposes
        page.render("step" + stepIndex++ + ".png");
    }
});

// Step 1
function initialize() {
    page.evaluate(function() {
//    $('form#search input.query').val('Jebus saves');
//    $('form#search').submit();
        console.log('Searching...');
    });
    parseResults();
}

// Step 2
function parseResults() {
    console.log('Iniciando...');
    page.evaluate(function() {
        console.log('entre...');
        var selector = 'div[class="canalLeft"] a img';
       
        $(selector).each(function(index, link) {
            var imagen = $(link).attr("src");
            console.log(imagen);
        })
    });
    phantom.exit();
}