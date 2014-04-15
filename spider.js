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
        page.injectJs('jquery.min.js');

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

        var selector = 'li[class="channel"]';

        $(selector).each(function(index, link) {
            var imagen = $(link).children('div[class="canalLeft"]').children('a').children('img').attr('src')
            var titulo = $(link).children('div[class="canalRight"]').not('div[class="canalRightTecnologies"]').text();
            var idcanales = $(link).attr('id');
            
            console.log(idcanales);
            
            var request = $.ajax({
                type: "POST",
                url: "http://localhost/spider/canales.php",
                data: 'descripcion=' + titulo + '&imagen=' + imagen + '&idcanales=' + idcanales,
                async: false,
                cache: false
            });

            request.done(function(msg) {

                console.log("Canal guardado: " + msg);

                var selector2 = 'ul[id="channel' + idcanales + '"]';

                $(selector2).each(function(index, link) {
                    var tituloprograma = $(link).children('li').children('a').attr('title');
                    var tempid = $(link).children('li').children('a').attr('id');
                    var arrayid = tempid.split('-');
                    var idhorarios = arrayid[2] + arrayid[3] + arrayid[4] + arrayid[5] + arrayid[6] + arrayid[7] + arrayid[8];

                    var request1 = $.ajax({
                        type: "POST",
                        url: "http://localhost/spider/horarios.php",
                        data: 'idhorarios=' + idhorarios + '&descripcion=' + tempid,
                        async: false,
                        cache: false
                    });

                    request1.done(function(msg) {
                        console.log("Horario Guardado: " + msg);

                        var request2 = $.ajax({
                            type: "POST",
                            url: "http://localhost/spider/programacion.php",
                            data: 'idcanales=' + idcanales + '&idhorarios=' + idhorarios + '&tituloprograma=' + tituloprograma,
                            async: false,
                            cache: false
                        });

                        request2.done(function(msg) {

                            console.log("Programación Guardada: " + msg);

                        });

                    });

                    request1.error(function(msg) {
                        console.log("Error : " + msg);
                    });

                });

            });

            request.error(function(msg) {
                console.log("Error : " + msg);
            });

            console.log("final");
        })
    });
    phantom.exit();
}
