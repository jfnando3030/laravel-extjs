Ext.require('Ext.chart.*');
Ext.require(['Ext.Window', 'Ext.fx.target.Sprite', 'Ext.layout.container.Fit', 'Ext.window.MessageBox']);
Ext.require(['Ext.data.*']);

Ext.onReady(function () {
    var chart = Ext.create('Ext.chart.Chart', {
            id: 'chartCmp',
            xtype: 'chart',
            style: 'background:#fff',
            animate: true,
            store: dsData1,
            axes: [{
                type: 'Numeric',
                grid: true,
                position: 'left',
                fields: ['data1'],
                title: 'Numero de Tickets',
                grid: {
                    odd: {
                        opacity: 1,
                        fill: '#ddd',
                        stroke: '#bbb',
                        'stroke-width': 1
                    }
                },
                minimum: 0,
                adjustMinimumByMajorUnit: 0
            }, {
                type: 'Category',
                position: 'bottom',
                fields: ['name'],
                title: 'Usuarios',
                grid: true,
                label: {
                    rotate: {
                        degrees: 315
                    }
                }
            }],
            series: [{
                type: 'area',
                highlight: false,
                axis: 'left',
                xField: 'name',
                yField: ['data1'],
                style: {
                    opacity: 0.93
                }
            }]
        });
    
    var win = Ext.create('Ext.Window', {
        width: 550,
        height: 400,
        minHeight: 400,
        x: 50,
        y: 100,
        minWidth: 550,
        hidden: false,
        shadow: false,
        maximizable: true,
        title: 'Total de tickets x Usuarios',
        renderTo: Ext.getBody(),
        layout: 'fit',
        items: chart
    }); 
});
