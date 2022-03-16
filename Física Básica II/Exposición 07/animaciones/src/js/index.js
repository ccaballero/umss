require('../css/main.css');

window.$=require('jquery');

$(function(){
    const list=[
        'Temperatura',
        'Escalas de temperatura',
        'Expansión térmica',
        'Calor',
        'Capacidad calorífica y cambios de fase',
        'Conducción del calor',
        'Ecuaciones de estado',
        'Primera ley de la termodinámica',
        'Tipos de procesos termodinámicos',
        'Gases ideales',
        'Procesos reversibles e irreversibles',
        'Maquinas térmicas',
        'Ciclo de Carnot',
        'Refrigerador',
        'Segunda ley de la termodinámica',
        'Entropía',
        'Tercera ley de la termodinámica',
        'Gracias'
    ];

    let i=0;

    setInterval(()=>{
        let j=i%list.length,
            h=360/list.length;

        $('body').css({
            'backgroundColor':'hsl('+[
                (j*h)+'deg',
                '50%',
                '25%'
            ].join(',')+')'
        });
        $('.jt__text').text(list[j]);

        i++;
    },8000);
});

