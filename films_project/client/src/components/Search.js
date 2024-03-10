import React, {useState} from "react";
import search from "../images/search.png"

const Search = ({intVal, setIntVal}) => {
  return (
    <div className="relative">
      <img src={search} className="absolute w-[25px] right-3 z-20 mt-[10px]" />
      <input
        type="search"
        placeholder="search for your film..."
        className="right-0 z-10 border-2 border-[#2d303d] bg-[#20212b] py-2 px-3 w-[240px] text-[17px] rounded-full"
        value={intVal}
        onChange={(e)=>{setIntVal(e.target.value);console.log(intVal)}}
      />
    </div>
  );
};

export default Search;
