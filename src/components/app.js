import React from 'react';

import './app.css';

import reactImg from '../asstes/react.png';
import dockerImg from '../asstes/docker.png'; 


function AppComponent(){
    return (
        <div className="container">
           <img src={reactImg} alt="reactImg" className="reactImg"/>
           <h1 className="title">This Is My First React jenkins integrate App</h1>
           <img src={dockerImg} alt="dockerImg" className="dockerImg"/>
        </div>
    ) 
}   

export default AppComponent;