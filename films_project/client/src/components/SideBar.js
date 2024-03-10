import React from 'react'
import {Link} from "react-router-dom"
import "../style/sideBar.css"
const SideBar = ({setSideBar}) => {
  return (
    <div className='relative text-white'>
        <div className='absolute top-7 right-5 text-[25px] font-bold cursor-pointer hover:text-red-600 transition' onClick={()=>{setSideBar((prev)=>!prev)}}>X</div>
        <ul className="flex flex-col pt-20 gap-10 text-[18px] ">
          <li className="hover:text-yellow-400 transition border-b-2 ml-10">
            <Link to={"/"}>HOME</Link>
          </li>
          <li className="hover:text-yellow-400 transition border-b-2 ml-10">
            <Link to={"/movies"}>MOVIES</Link>
          </li>
          <li className="hover:text-yellow-400 transition border-b-2 ml-10">TV SHOW</li>
          <li className="hover:text-yellow-400 transition border-b-2 ml-10">PRICING</li>
          <li className="hover:text-yellow-400 transition border-b-2 ml-10">CONTACTS</li>
        </ul>
    </div>
  )
}

export default SideBar