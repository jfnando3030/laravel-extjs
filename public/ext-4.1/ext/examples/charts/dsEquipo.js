var dsEquipo = new Ext.data.JsonStore({
            storeId: 'dsEquipo',
            root: 'Equipo',
            url: '/EquiposDispatchAction.do',
            autoLoad:true,
            baseParams: {
                metodo: 'consultarequiposAll'
            },
            fields: [
                {
                    name: 'id_equipo'
                },
                {
                    name: 'nombre'
                }
            ]
        });