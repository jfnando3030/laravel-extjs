<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
      <title>..:: FORMULARIO ::..</title>
    <link rel="stylesheet" type="text/css" href="ext-4.1/ext/resources/css/ext-all.css" />
    <script type="text/javascript" src="ext-4.1/ext/ext-all.js"></script>
    <script type="text/javascript" src="ext-4.1/ext/locale/ext-lang-es.js"></script>
    <script type="text/javascript" src="js/ManLogin.ui.js"></script>
    <script type="text/javascript" src="js/ManLogin.js"></script>

    </head>
    <body>
      <script type="text/javascript">

            Ext.onReady(function() {
                Ext.QuickTips.init();
                var cmp1 = new ManLogin({
                    renderTo: Ext.getBody()
                });
                cmp1.show();

            });
        </script>
    </body>
</html>
