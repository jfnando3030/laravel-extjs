<%@page import="Util.Fecha"%>
<%@page import="java.util.Date"%>
<%@page import="General.Controller.LoginUser"%>
<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%
            String contexto = request.getContextPath();
            
            LoginUser loginUser = (LoginUser)session.getAttribute("UserLoggedIn");
            
            Date fecha=new Date();
            String fechaSistema=Fecha.parseFecha(fecha,"dd-MM-yyyy");
            String horaSistema=Fecha.parseFecha(fecha,"HH:mm:ss");
            
%>
<link rel="stylesheet" type="text/css" href="<%=contexto%>/extjs/resources/css/ext-all.css"/>
<link rel="stylesheet" type="text/css" href="<%=contexto%>/extjs/resources/css/GroupSummary.css"/>
    
    <link rel="stylesheet" type="text/css" title="gray"      href="<%=contexto%>/extjs/resources/css/xtheme-gray.css"/>
    <link rel="stylesheet" type="text/css" title="blue"      href="<%=contexto%>/extjs/resources/css/xtheme-blue.css" /> 
    <link rel="stylesheet" type="text/css" title="access"    href="<%=contexto%>/extjs/resources/css/xtheme-access.css" />
    <link rel="stylesheet" type="text/css" title="yourtheme" href="<%=contexto%>/extjs/resources/css/yourtheme.css" />



<script type="text/javascript" src="<%=contexto%>/extjs/adapter/ext/ext-base.js"></script>
<script type="text/javascript">

    Ext.siga = {
        alert : function(config){
            dc = {
                title : "SIGA",
                msg : "Alerta",
                buttons: Ext.Msg.OK,
                icon: Ext.MessageBox.WARNING
            };
            Ext.apply(dc,config);
            Ext.Msg.show(dc);
        },
        info : function(config){
            dc = {
                title : "SIGA",
                msg : "Info",
                buttons: Ext.Msg.OK,
                icon: Ext.MessageBox.INFO
            };
            Ext.apply(dc,config);
            Ext.Msg.show(dc);
        },
        error : function(config){
            dc = {
                title : "SIGA",
                msg : "Error",
                buttons: Ext.Msg.OK,
                icon: Ext.MessageBox.ERROR
            };
            Ext.apply(dc,config);
            Ext.Msg.show(dc);
        },
        fechaSistema : function()
        {
            return 
        }
    };

    Ext.apply(Ext,{

        // aun no definido el uso
        // pero se preguntara por el parametro cada vez
        useContext:  true,

        // listado de properties a revisar
        _properties: {
            "url"     :"todas las propiedades url",
            "icon"    :"todas las propiedades icon",
            "loader"  :"para que verifique dentro del loader que corresponde al TreePanel"
        },

        // el contexto
        _context:     "<%=contexto%>",
        context:      "<%=contexto%>",
        
        codigoUsuario   :   "<%=loginUser != null ? loginUser.getCodigoUsuario() : ""%>",
        nombreUsuario   :   "<%=loginUser != null ? loginUser.getUsuario() : ""%>",
        
        codigoEndidad   :   "<%=loginUser != null ? loginUser.getCodigoEntidad() : ""%>",
        nombreEntidad   :   "<%=loginUser != null ? loginUser.getNombreEntidad() : ""%>",
        rucEntidad      :   "<%=loginUser != null ? loginUser.getRucEntidad() : ""%>",
        codArea      :   "<%=loginUser != null ? loginUser.getCodArea() : ""%>",
        codModulo      :   "<%=loginUser != null ? loginUser.getCodModulo() : ""%>",
        
        fechaSistema    :   "<%=fechaSistema%>",
	horaSistema     :   "<%=horaSistema%>",

        //establece el contexto
        _setContext:  function( config ){
            if( this.useContext ){
                for(var att in this._properties){
                    if( Ext.isObject( config[att] ) )
                        config[att] = this._setContext( config[att] );
                    else if( config[att] ){
                        if ( "/" === config[att].charAt(0) && -1 === config[att].indexOf(this._context) )
                            config[att] = this._context + config[att];
                    }
                }
            }
            return config;
        },
        preConfig     : function( config ){
            return this._setContext( config );
        },
        preAttributes : function( config ){
            return this._setContext( config );
        }
    });


    function ControlarError(form, action)
    {
        switch (action.failureType)
        {
            case Ext.form.Action.CLIENT_INVALID:
                Ext.siga.error({msg:"Los campos de la forma no se han ingresado correctamente."});
                break;
            case Ext.form.Action.CONNECT_FAILURE:
                Ext.siga.error({msg:"Fallo la comunicacion con el servidor"});
                break;
            case Ext.form.Action.SERVER_INVALID:
                Ext.siga.error({msg:action.result.error});
                break;
        }
    }

</script>
<script type="text/javascript" src="<%=contexto%>/extjs/ext-all-debug.js"></script>
<script type="text/javascript" src="<%=contexto%>/extjs/ux-all-debug.js"></script>
<script type="text/javascript" src="<%=contexto%>/extjs/Ext.ux.NumericField.js"></script>

<!--Idioma Extjs-->
<script language="JavaScript" src="<%=contexto%>/extjs/idiomasExtj/ext-lang-es.js"></script>
<script type="text/javascript" src="<%=contexto%>/extjs/styleswitcher.js"></script>

<script type="text/javascript">
Ext.onReady(function() {
	Ext.Ajax.timeout = 600000;
});
</script>
