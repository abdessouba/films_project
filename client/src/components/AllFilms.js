import React, { useEffect, useState } from "react";
import axios from "axios";
import "../style/mainFilms.css";
import NavBar from "./NavBar";
import FilmComponent from "./FilmComponent";
import Search from "./Search";
import { query } from "@tanstack/react-query";
import Tag from "./Tag.js";
const AllFilms = () => {
  const [data, setData] = useState([]);
  const [intVal, setIntVal] = useState("");
  const [s_data, setS_data] = useState([]);
  const [pageNum, setPageNum] = useState(1)
  const [tag, setTag] = useState("")

  useEffect(() => {
    axios.get(`http://localhost:3000/api/getMovie?offset=${pageNum}&sch=${intVal}&tag=${tag}`).then((res) => {
      setData(res.data);
      setS_data([...res.data]);
      console.log(res.data)
    });
  }, [pageNum,intVal,tag]);


  // useEffect(() => {
  //   if (intVal != "") {
  //     axios
  //       .post("http://localhost:3000/film", { search: intVal })
  //       .then((res) => {
  //         setS_data(res.data);
  //       });
  //   } else {
  //     setS_data([...data]);
  //   }
  // }, [intVal]);
  return (
    <div id="films" className="text-white">
      <div className="w-[80%] m-auto pt-5">{<NavBar />}</div>
      <div className="w-[80%] m-auto pt-[80px] pb-[40px] flex justify-between items-center ">
        <Tag setTag={setTag}/>
        <Search intVal={intVal} setIntVal={setIntVal} />
      </div>
      <div
        id="content"
        className="w-[90%] m-auto flex justify-center items-center gap-5 flex-wrap"
      >
        {s_data?.map((film) => {
          return <FilmComponent film={film} key={film.id} />;
        })}
      </div>
      <div id="pagination" className="pb-5">
        <ul className="flex justify-center items-center gap-1">
          <li onClick={(e)=>{setPageNum(e.target.innerHTML)}} className="px-3 py-1 bg-slate-800 border-2 border-slate-600 hover:border-yellow-300 transition cursor-pointer">prev</li>
          <li onClick={(e)=>{setPageNum(e.target.innerHTML)}} className="px-3 py-1 bg-slate-800 border-2 border-slate-600 hover:border-yellow-300 transition cursor-pointer">1</li>
          <li onClick={(e)=>{setPageNum(e.target.innerHTML)}} className="px-3 py-1 bg-slate-800 border-2 border-slate-600 hover:border-yellow-300 transition cursor-pointer">2</li>
          <li onClick={(e)=>{setPageNum(e.target.innerHTML)}} className="px-3 py-1 bg-slate-800 border-2 border-slate-600 hover:border-yellow-300 transition cursor-pointer">3</li>
          <li onClick={(e)=>{setPageNum(e.target.innerHTML)}} className="px-3 py-1 bg-slate-800 border-2 border-slate-600 hover:border-yellow-300 transition cursor-pointer">...</li>
          <li onClick={(e)=>{setPageNum(e.target.innerHTML)}} className="px-3 py-1 bg-slate-800 border-2 border-slate-600 hover:border-yellow-300 transition cursor-pointer">next</li>
        </ul>
      </div>
    </div>
  );
};

export default AllFilms;
