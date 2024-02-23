import React, { useState, useEffect } from "react";
import NavBar from "./NavBar.js";
import FilmComponent from "./FilmComponent.js";
import play from "../images/play.png";
import "../style/movie.css";
import { Link } from "react-router-dom";
import axios from "axios";
const Movies = () => {
  var [data, setData] = useState([]);
  useEffect(() => {
    axios.get("http://localhost:3000/movies").then((res) => {
      setData(res.data);
    });
  }, []);
  function handleScroll(event) {
    if (window.scrollY == 124) {
      return;
    }
  }
  document.addEventListener("scroll", handleScroll);
  return (
    <div>
      <section id="main_movie" >
        <div id="nav" className="w-[80%] m-auto pt-[30px]">
          <NavBar />
        </div>
        <div
          id="our_movie"
          className="flex flex-col items-center justify-center mt-[170px]"
        >
          <h1 className="max-sm:text-5xl text-[70px] font-bold text-center leading-[80px]">
            ENJOY OUR
            <br />
            <span className="text-yellow-300">MOVIES</span> HERE
          </h1>
          <div
            id="arrow"
            className="animate-bounce bg-white rounded-full p-2 z-0 mt-3"
          >
            <a href="#">
              <img src={play} width={"60px"} className="mt-3 mx-2 rotate-90" />
            </a>
          </div>
        </div>
      </section>
      <section id="first_section" className="text-[white] pt-20 relative">
        <div className="flex items-center justify-between max-sm:flex-col max-sm:gap-5">
          <div>
            <p className="-mb-1 text-yellow-300">ONLINE STREAMING</p>
            <h1 className="text-[40px] font-bold max-sm:text-3xl">Most Resent Movies</h1>
          </div>
          <div>
            <a className="border-2 rounded-full px-6 py-3 mr-3">Movies</a>
            <a href="#" className="border-2 rounded-full px-6 py-3">
              Anime
            </a>
          </div>
        </div>
        <div className="flex justify-center items-center gap-5 flex-wrap pt-10">
          {data?.map((obj) => {
            return <FilmComponent film={obj} />;
          })}
        </div>
        <Link
          to="/viewAll"
          className="absolute right-[110px] text-[15px] font-bold"
        >
          view all
        </Link>
        {/* <div className="absolute bottom-0 left-[180px]">
          <div className="flex items-center justify-between w-[200px]">
            <span className="w-1/5 border-2 text-center py-1 box-border">
              1
            </span>
            <span className="w-1/5 border-2 text-center py-1 box-border">
              2
            </span>
            <span className="w-1/5 border-2 text-center py-1 box-border">
              3
            </span>
            <span className="w-1/5 border-2 text-center py-1 box-border">
              4
            </span>
            <span className="w-1/5 border-2 text-center py-1 box-border">
              Next
            </span>
          </div>
        </div> */}
      </section>
      <section id="second_section" className="text-[white] pt-20 relative">
        <div className="flex items-center justify-between max-sm:flex-col max-sm:gap-5">
          <div>
            <p className="-mb-1 text-yellow-300">ONLINE STREAMING</p>
            <h1 className="text-[40px] font-bold max-sm:text-3xl">Most Watched Movies</h1>
          </div>
          <div>
            <a href="#" className="border-2 rounded-full px-6 py-3 mr-3">
              Movies
            </a>
            <a href="#" className="border-2 rounded-full px-6 py-3">
              Anime
            </a>
          </div>
        </div>
        <div className="flex justify-center items-center gap-5 flex-wrap pt-10">
          {data?.map((obj) => {
            return <FilmComponent film={obj} />;
          })}
        </div>
        <Link
          to="/viewAll"
          className="absolute right-[110px] text-[15px] font-bold"
        >
          view all
        </Link>
      </section>
    </div>
  );
};

export default Movies;
