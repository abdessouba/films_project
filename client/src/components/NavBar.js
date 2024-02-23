import React, { useState } from "react";
import { Link } from "react-router-dom";
import logo from "../images/logo.png";
import bar from "../images/menu-bar.png";
import Join from "./Join";
import Register from "./Register.js";
import Login from "./Login.js";
import Module from "./Module";
import SideBar from "./SideBar";
const NavBar = () => {
  const [mode, setMode] = useState("");
  const [sideBar, setSideBar] = useState(false)
  return (
    <nav className="flex justify-between items-center text-white">
      {mode != "" && (
        <div
          onClick={() => {
            setMode("");
          }}
          className="absolute top-0 left-0 right-0 top-0 bottom-0 bg-black opacity-50"
        ></div>
      )}
      <Link to="/" className="flex items-center justify-center">
        <img src={logo} className="w-[120px] -mt-3 -ml-5" />
        <h1 className="text-[40px] font-bold -ml-5">
          Movi<span className="text-yellow-300 text-[44px]">X</span>
        </h1>
      </Link>
      <div>
        <ul className="hidden items-center justify-center gap-10 text-[18px] min-[1270px]:flex">
          <li className="hover:text-yellow-400 transition">
            <Link to={"/"}>HOME</Link>
          </li>
          <li className="hover:text-yellow-400 transition">
            <Link to={"/movies"}>MOVIES</Link>
          </li>
          <li className="hover:text-yellow-400 transition">TV SHOW</li>
          <li className="hover:text-yellow-400 transition">PRICING</li>
          <li className="hover:text-yellow-400 transition">CONTACTS</li>
        </ul>
      </div>
      <div className="flex justify-center items-center gap-3">
        <div className="max-[750px]:hidden">
          <Join mode={mode} setMode={setMode} />
        </div>
        <div
          id="burger"
          className="cursor-pointer"
          onClick={() => {
            setSideBar(true);
          }}
        >
          <img src={bar} width="40px" />
        </div>
      </div>
      <div
        id="module"
        className="absolute left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2"
      >
        {mode == "register" && (
          <Module>
            <p
              onClick={() => {
                setMode("");
              }}
              className="absolute right-7 top-5 cursor-pointer text-[25px] z-10"
            >
              X
            </p>

            <Register />
          </Module>
        )}
        {mode == "login" && (
          <Module>
            <p
              onClick={() => {
                setMode("");
              }}
              className="absolute right-7 top-5 cursor-pointer text-[25px] z-10"
            >
              X
            </p>

            <Login />
          </Module>
        )}
      </div>
      {sideBar && (
        <div
          id="sideBar"
          className="fixed -right-[250px] w-[250px] bottom-0 h-screen bg-slate-700 opacity-90 z-30"
        >
          <SideBar setSideBar={setSideBar}/>
        </div>
      )}
    </nav>
  );
};

export default NavBar;
