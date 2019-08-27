Ext.require('Ext.chart.*');
Ext.require(['Ext.Window', 'Ext.fx.target.Sprite', 'Ext.layout.container.Fit', 'Ext.window.MessageBox']);

Ext.onReady(function () {
    var textArea;
    
    Ext.chart.theme.White = Ext.extend(Ext.chart.theme.Base, {
        constructor: function() {
           Ext.chart.theme.White.superclass.constructor.call(this, {
               axis: {
                   stroke: 'rgb(8,69,148)',
                   'stroke-width': 1
               },
               axisLabel: {
                   fill: 'rgb(8,69,148)',
                   font: '12px Arial',
                   'font-family': '"Arial',
                   spacing: 2,
                   padding: 5,
                   renderer: function(v) { return v; }
               },
               axisTitle: {
                  font: 'bold 18px Arial'
               }
           });
        }
    });
    var chart1 = Ext.create('Ext.chart.Chart', {
            id: 'chartCmp1',
            xtype: 'chart',
            animate: true,
            shadow: true,
            store: dsData1,
            axes: [{
                type: 'Numeric',
                position: 'bottom',
                fields: ['data1'],
                label: {
                    renderer: Ext.util.Format.numberRenderer('0,0')
                },
                title: 'Numero de Tickets',
                grid: true,
                minimum: 0
            }, {
                type: 'Category',
                position: 'left',
                fields: ['name'],
                title: 'Usuarios'
            }],
            theme: 'White',
            background: {
              gradient: {
                id: 'backgroundGradient',
                angle: 45,
                stops: {
                  0: {
                    color: '#ffffff'
                  },
                  100: {
                    color: '#eaf1f8'
                  }
                }
              }
            },
            series: [{
                type: 'bar',
                axis: 'bottom',
                highlight: true,
                tips: {
                  trackMouse: true,
                  width: 140,
                  height: 28,
                  renderer: function(storeItem, item) {
                    this.setTitle(storeItem.get('name') + ': ' + storeItem.get('data1') + ' Tickets');
                  }
                },
                label: {
                  display: 'insideEnd',
                    field: 'data1',
                    renderer: Ext.util.Format.numberRenderer('0'),
                    orientation: 'horizontal',
                    color: '#333',
                  'text-anchor': 'middle'
                },
                xField: 'name',
                yField: ['data1']
            }]
        });
        
    var win2 = Ext.create('Ext.Window', {
        width: 550,
        height: 400,
        minHeight: 400,
        x: 600,
        y: 100,
        minWidth: 550,
        hidden: false,
        maximizable: true,
        title: 'Total de tickets x Usuarios',
        renderTo: Ext.getBody(),
        layout: 'fit',
        tbar: [{
            text: 'Recargar Datos',
            handler: function() {
                store1.loadData(generateData());
            }
        }],
        items: chart1
    });
});
