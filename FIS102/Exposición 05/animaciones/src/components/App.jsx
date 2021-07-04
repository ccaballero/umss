import React from 'react';
import ReactAnime from 'react-animejs';

import '../styles/index.css';

const {Anime,stagger}=ReactAnime;

const App=()=>{
    return (
        <Anime
            initial={[{
                targets:'#Box',
                duration:3500,
                loop:true,
                keyframes:[{
                    translateX:50
                },{
                    translateY:50
                },{
                    translateX:0
                },{
                    translateY:0
                }]
            }]}
        >
            <div
                id='Box'
                style={{
                    height:50,
                    width:50,
                    background:'#d030d0'
                }}
            />
        </Anime>
    );
}

export default App;

