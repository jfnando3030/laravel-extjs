ManLoginUi = Ext.extend(Ext.Viewport, {
    layout: 'fit',
    id: 'pnlItems',
    initComponent: function() {
        this.items = [
            {
                xtype: 'panel',
                title: 'Mantenimiento de Modulo',
                layout: 'border',
                ref: 'pnlTipos',
                defaults: {
                    collapsible: true,
                    split: true,
                    bodyStyle: 'padding:15px'
                },
                id: 'pnlTipos',
                items: [
                    {
                        xtype: 'form',
                        title: 'Busqueda de Datos',
                        id: 'FrmBusqueda',
                        height: 150,
                        region: 'north',
                        frame: false,
                        ref: '../FrmBusqueda',
                        tbar: {
                            xtype: 'toolbar',
                            buttonAlign: 'left',
                            items: [
                                {
                                    xtype: 'tbseparator'
                                },
                                {
                                    xtype: 'button',
                                    tooltip: 'Consultar',
                                    text: 'Consultar',
                                    icon: '../public/icons/16x16/find.png',
                                    ref: '../../../btnConsultar',
                                    id: 'btnConsultar'
                                }
                            ]
                        },
                        items: [
                            {
                                xtype: 'textfield',
                                fieldLabel: 'Modulo',
                                width: 180,
                                allowBlank:true,
                                id: 'txtnombrebusqueda',
                                ref: '../../txtnombrebusqueda'
                            },
                            {
                                xtype: 'combo',
                                fieldLabel: 'Estado',
                                width: 180,
                                id: 'cbxestadobusqueda',
                                emptyText:"Escoger opcion",
                                allowBlank:true,
                                editable:true,
                                displayField: 'Estado',
                                valueField: 'IdEstado',
                                mode: 'local',
                                triggerAction: 'all',
                                name: 'idestadobusqueda',
                                hiddenName: 'idestadobusqueda',

                                ref: '../../cbxestadobusqueda'
                            }
                        ]
                    },
                    {
                        xtype: 'form',
                        title: 'Ingreso de Datos',
                        id: 'FrmItems',
                        region: 'west',
                        monitorValid: true,
                        height: 200,
                        width:300,
                        frame: false,
                        ref: '../FrmItems',
                        tbar: {
                            xtype: 'toolbar',
                            buttonAlign: 'right',
                            items: [
                                {
                                    xtype: 'tbseparator'
                                },
                                {
                                    xtype: 'button',
                                    tooltip: 'Nuevo',
                                    text: 'Nuevo',
                                    icon: '../public/icons/16x16/page.png',
                                    ref: '../../../btnNuevo',
                                    id: 'btnNuevo'
                                },
                                {
                                    xtype: 'tbseparator'
                                },
                                {
                                    xtype: 'button',
                                    text: 'Grabar',
                                    tooltip: 'Grabar',
                                    formBind: true,
                                    ref: '../../../btnModificarIng',
                                    icon: '../public/icons/16x16/disk.png',
                                    id: 'btnModificarIng'
                                }
                            ]
                        },
                        items: [
                            {
                                xtype: 'textfield',
                                fieldLabel: 'Id Modulo Usuario',
                                anchor: '100%',
                                id: 'txtiditem',
                                hidden:true,
                                ref: '../../txtiditem'
                            },
                            {
                                xtype: 'textfield',
                                fieldLabel: 'Modulo',
                                allowBlank:false,
                                maxLength:20,
                                anchor: '100%',
                                id: 'txtnombreitem',
                                ref: '../../txtnombreitem'
                            },
                            {
                                xtype: 'numberfield',
                                fieldLabel: 'Numero',
                                allowBlank:false,
                                maxLength:1,
                                anchor: '100%',
                                id: 'txtnumero',
                                ref: '../../txtnumero'
                            },
                            {
                                xtype: 'combo',
                                fieldLabel: 'Estado',
                                anchor: '100%',
                                id: 'cbxestado',
                                emptyText:"Escoger opcion",
                                allowBlank:false,
                                editable:false,
                                displayField: 'Estado',
                                valueField: 'IdEstado',
                                mode: 'local',
                                triggerAction: 'all',
                                name: 'idestado',
                                hiddenName: 'idestado',

                                ref: '../../cbxestado'
                            }
                        ]
                    }
                ]
            }
        ];

        ManLoginUi.superclass.initComponent.call(this);

    }
});
