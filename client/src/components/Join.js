import React, { useState } from "react";
import Module from "./Module.js";
const Join = ({setMode, mode}) => {
  return (
    <div className="absolute flex flex-center gap-3 relative">
      <button
        onClick={() => {
          setMode("register");
        }}
        className="py-1 px-3 bg-yellow-300 text-black rounded-full"
      >
        Register
      </button>
      <button
        onClick={() => {
          setMode("login");
        }}
        className="border-2 py-1 px-3 border-yellow-300 rounded-full"
      >
        Login
      </button>
    </div>
  );
};

export default Join;
