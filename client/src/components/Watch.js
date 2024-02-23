import React, { useEffect, useState } from "react";
import NavBar from "./NavBar";
import axios from "axios";
import { Link, useParams } from "react-router-dom";
import "../style/watch.css";
const Watch = () => {
  const { idf } = useParams();
  const [film, setFilm] = useState([]);
  const [tags, setTags] = useState([]);
  const [themes, setThemes] = useState([]);
  useEffect(() => {
    axios.get(`http://localhost:3000/watch/${idf}`).then((res) => {
      setFilm(res.data);
    });
    axios.get(`http://localhost:3000/tags/${idf}}`).then((res) => {
      setTags(res.data);
    });
    axios.get(`http://localhost:3000/themes/${idf}}`).then((res) => {
      setThemes(res.data);
    });
  }, []);
  return (
    <div id="watch">
      <div className=" sm:w-[80%] m-auto text-white">
        <div className="py-[50px]">
          <NavBar />
        </div>
        <section className="relative flex justify-between items-center   border-4 border-white  py-20 m-auto mb-[114px]">
          <div className="flex max-xl-[1110px]:flex-col items-center justify-center relative gap-10">
            <img src={film[0]?.image_src} />
            <div id="content" className="flex flex-col gap-3 z-20">
              <h1 className="text-[50px] max-w-[700px] max-h-[150px] overflow-hidden">
                {film[0]?.title}
              </h1>
              <p className="-mt-3">
                <span className="font-bold">{film[0]?.release_date} </span>
                directed by{" "}
                <span className="font-bold">{film[0]?.directed_by}</span>
              </p>
              <menu className="flex items-center gap-2">
                <span className="font-bold text-[15px] bg-yellow-300 text-black py-1 px-3">
                  {film[0]?.rate}
                </span>
                <span className="border-[2px] font-bold px-1 py-1 text-[12px]">
                  HD
                </span>
                <ul className="flex items-center gap-2 ">
                  {tags.map((tag) => (
                    <li>
                      <Link
                        to="/viewAll"
                        className="hover:underline transition"
                      >
                        {tag.tag_name},
                      </Link>
                    </li>
                  ))}
                </ul>
                <span>{film[0]?.video_time} min</span>
              </menu>
              <p>{film[0]?.description}</p>
              <div className="mt-2 flex  items-center gap-2">
                <Link
                  href="#"
                  className="w-[100px] font-bold text-center  border-2 border-yellow-300 hover:bg-yellow-300 transition py-3 px-6 rounded-full"
                >
                  Watch
                </Link>
                <Link
                  href="#"
                  className="w-[100px] font-bold text-center border-2 border-green-300 hover:bg-green-300 transition py-3 px-6 rounded-full"
                >
                  About
                </Link>
                <a href="#" className="hidden max-xl-[1190px]:block font-bold text-center text-black border-2 border-yellow-300 bg-yellow-300 py-3 px-6 hover:bg-yellow-400 transition cursor-pointer">DOWNLOAD</a>
              </div>
            </div>
          </div>
          <div className="absolute -right-[155px] border-2 border-black text-black p-10 w-[300px] text-center font-bold rotate-90 max-xl-[1190px]:hidden bg-yellow-300 text-[20px] hover:bg-yellow-400 transition cursor-pointer">
            DOWNLOAD
          </div>
        </section>
        <div className="w-full h-[2px] bg-white"></div>
        <section>
          <h1 className=" text-[50px] text-center overflow-hidden my-5">
            WATCHING:{" "}
            <span className="text-yellow-400 font-bold">{film[0]?.title}</span>
          </h1>
          <div className="flex flex-col gap-1 w-full w-[85%] m-auto ">
            <iframe
              className=""
              height="700"
              src={film[0]?.video_trailer}
              allowFullScreen
            ></iframe>
            <a
              href={film[0]?.film_link}
              target="_blanck"
              className="hover:text-gray-500 transition text-end mb-4"
            >
              WATCH FULL VIDEO
            </a>
          </div>
          <div >
          <p className="text-4xl font-bold bg-slate-800 p-4 mb-5 border-2 border-slate-700">Film About:</p>
          <div id="themes" className="text-xl">{themes.map((t)=><Link to={"/viewAll"} className="hover:opacity-80 hover:underline transition">{t.theme}, </Link>)}</div>
          </div>
        </section>
      </div>
    </div>
  );
};

export default Watch;
