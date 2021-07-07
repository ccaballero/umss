import SVG from './img/v.svg';
import './index.css';

const wave_f=(A,k,x,w,t)=>{
    return A*Math.cos((k*x)-(w*t));
}

let origin={
        x:20,
        y:128
    },
    path=[
        document.getElementById('wave1'),
        document.getElementById('wave2'),
        document.getElementById('wave3'),
        document.getElementById('wave4'),
        document.getElementById('wave5'),
        document.getElementById('wave6')
    ];

let A=64,
    x=0,
    t=0,
    k=[6,5,4,3,2,1],
    w=[1,2,3,4,5,6];

setInterval(()=>{
    for(let i=0;i<path.length;i++){
        let d=['M'];

        for(let j=x;j<1880;j++){
            d.push(origin.x+(j*1));
            d.push(-32+origin.y+(i*174)-wave_f(A,k[i]/100,j,w[i],t));
        }

        path[i].setAttribute('d',d.join(' '));
    }

    t++;
},(1000/12));

