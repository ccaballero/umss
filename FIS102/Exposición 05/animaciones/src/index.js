import './styles/index.css';

const wave_f=(A,k,x,w,t)=>{
    return A*Math.cos((k*x)-(w*t));
}

let svg=document.getElementById('wave'),
    origin={
        x:20,
        y:128
    },
    path=document.createElementNS('http://www.w3.org/2000/svg','path');

svg.appendChild(path);

let k=0.04,
    x=0,
    w=2300,
    t=0;

setInterval(()=>{
    let d=['M'];

    for(let i=x;i<1880;i++){
        d.push(origin.x+(i*1));
        d.push(origin.y+wave_f(120,k,i,w,t));
    }

    path.setAttribute('d',d.join(' '));
    t++;
},(1000/12));

