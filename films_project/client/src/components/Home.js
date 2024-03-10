import React, { useEffect, useState, useContext, useRef } from "react";
import "../style/main.css";
import service from "../images/services_img.jpg";
import tv from "../images/tv.png";
import camera from "../images/video-camera.png";
import FilmComponent from "../components/FilmComponent";
import NavBar from "./NavBar";
import axios from "axios";
import SideBar from "./SideBar.js";
import { MyContext } from "../contexts/Context.js";
import Tag from "./Tag.js";
import { Link } from "react-router-dom";
const Home = () => {
  const { tags } = useContext(MyContext);
  const [showMore, setShowMore] = useState(false);
  axios.defaults.withCredentials = true; // daroria a tebi
  window.onresize = () => {
    if (window.innerWidth > 200) {
      setShowMore(false);
    }
  };
  // useEffect(() => {
  //   axios.get("http://localhost:3000/login").then((res) => {
  //     console.log(res.data);
  //   })
  // }, []);
  // useEffect(() => {
  //   axios.get("http://localhost:3000/movies/1").then((res) => {
  //     setData(res.data);
  //   }).catch(err){console.log(err) };
  // }, []);
  const tagRef = useRef();
  const [list, setList] = useState([]);
  const [data, setData] = useState([]);
  useEffect(() => {
    getDataTag();
  }, []);
  useEffect(() => {
    setList((prev) => [...prev, tagRef.current]);
  }, []);
  useEffect(() => {
    if (list.includes(tagRef)) {
      console.log("is");
    }
    list.forEach((li) => {
      li.classList.remove("border-yellow-400");
    });
    if (list.length > 0) {
      list[list.length - 1].classList.toggle("border-yellow-400");
    }
  }, [list]);
  // const listLi = [...document.getElementsByTagName("li")]
  // const handlClick = (li)=>{
  //   listLi.forEach((li)=>{
  //     if(li.classList.contains("bg-red-400")){
  //       li.classList.remove("bg-red-400")
  //     }
  //   })
  //   li.classList.toggle("bg-red-400")
  // }
  const getDataTag = (id) => {
    axios.get(`http://192.168.1.14:3000/movies/tag/${id}`).then((res) => {
      setData(res.data);
      console.log(data);
    }).catch((err)=>{
      console.log("cannot" + err)
    });
  };
  return (
    <main>
      <section id="main">
        <div className="max-sm:w-[90%] w-[80%] m-auto pt-[30px]">
          <NavBar />
          <main className="absolute bottom-[100px]">
            <div className="text-yellow-300 text-[32px] -mb-4 font-bold">
              MoviX
            </div>
            <h1 className="max-sm:text-5xl text-8xl font-bold text-white max-sm-[1000px]:text-[60px]">
              Unlimited <span className="text-yellow-300">Movie</span>, TVs
              <br /> Shows, & More.
            </h1>
            <div className="text-white my-5">
              <span className="px-1 border-2 bg-white text-black">PG 18</span>
              <span className="ml-3 px-1 border-2 ">HD</span>
              <span className="ml-3 ">
                <a href="#">Romance</a>, <a href="#">Drama</a>
              </span>
              <span className="ml-3 ">2023</span>
              <span className="ml-3 ">123 min</span>
            </div>
            <div>
              <div className="mt-8">
                <Link
                  to={`/watch/21`}
                  className=" border-2 border-yellow-300 rounded-full px-5 py-3 text-white hover:bg-yellow-300 hover:text-black transition"
                >
                  WATCH NOW
                </Link>
              </div>
            </div>
          </main>
        </div>
      </section>
      <section id="second_section" className="text-white h-auto pb-20">
        <div id="second-fuck"></div>
        <div id="fuck">
          <div>
            <h2 className="text-[15px] text-yellow-400">ONLINE STREAMING</h2>
            <h1 className="font-bold text-[50px] mb-[30px]">Upcoming Movies</h1>
            <ul className="relative flex flex-between items-center gap-3 mb-[25px]">
              <li
                ref={tagRef}
                id="18"
                onClick={(e) => {
                  getDataTag(e.target.id);
                  setList([...list, e.target]);
                }}
                className="border-2  py-3 px-6 rounded-full hover:border-yellow-400 transition cursor-pointer"
              >
                Documentary
              </li>
              <li
                id="16"
                onClick={(e) => {
                  getDataTag(e.target.id);
                  setList([...list, e.target]);
                }}
                className="border-2 py-3 px-6 rounded-full hover:border-yellow-400 transition cursor-pointer"
              >
                Family
              </li>
              <li
                id="15"
                onClick={(e) => {
                  getDataTag(e.target.id);
                  setList([...list, e.target]);
                }}
                className="border-2 py-3 px-6 rounded-full hover:border-yellow-400 transition cursor-pointer max-sm-[200px]:hidden "
              >
                Music
              </li>
              <li
                onClick={() => {
                  setShowMore((prev) => !prev);
                }}
                className="font-bold border-2 py-3 px-6 rounded-full hover:border-yellow-400 transition cursor-pointer hidden max-sm-[200px]:block "
              >
                +
              </li>
              {showMore && (
                <span className="absolute right-10 left-10 top-[65px] bg-slate-800 border-2 border-slate-500 rounded-lg p-7 z-30 hidden max-sm-[200px]:block">
                  <ul className="relative flex flex-col gap-3">
                    <li
                      id="15"
                      onClick={(e) => {
                        getDataTag(e.target.id);
                        setList([...list, e.target]);
                      }}
                      className="border-2 text-center py-3 px-6 rounded-full hover:border-yellow-400 transition cursor-pointer"
                    >
                      Music
                    </li>
                  </ul>
                </span>
              )}
            </ul>
          </div>

          <div className="flex justify-around items-center flex-wrap mt-10 min-h-[500px]">
            {data?.map((obj) => (
              <FilmComponent film={obj} key={obj.id} />
            ))}
          </div>
        </div>
      </section>
      <section id="third_section" className=" bg-[#252627]">
        <div className="w-[80%] m-auto py-10 flex justify-center items-center gap-10 text-white max-[900px]:flex-col">
          <div>
            <img src={service} />
            <button className="mt-3 border-2 px-5 py-3 rounded-md">
              DOWNLOAD
            </button>
          </div>
          <div className="max-w-[500px]">
            <p id="line" className="relative">
              OUR SERVICES
            </p>
            <h1 className="text-[40px] font-bold mb-3 max-sm:text-[39px]">
              Download Your Shows
              <br /> Watch Offline.
            </h1>
            <p>
              Lorem ipsum dolor sit amet, consecetur adipiscing elseddo eiusmod
              tempor.There are many variations of passages of lorem Ipsum
              available, but the majority have suffered alteration in some
              injected humour.
            </p>
            <div className="py-4">
              <div className="py-4 flex gap-4">
                <div className="bg-white border-2 rounded-full inline-block p-3">
                  <img src={tv} width={"70px"} />
                </div>
                <div>
                  <p className="font-bold text-[20px]">Enjoy on Your TV.</p>
                  <p>
                    Lorem ipsum dolor sit amet, consecetur adipiscing elit, sed
                    do eiusmod tempor.
                  </p>
                </div>
              </div>
              <div className="py-4 flex gap-4">
                <div className="bg-white border-2 rounded-full inline-block p-3">
                  <img src={camera} width={"70px"} />
                </div>
                <div>
                  <p className="font-bold text-[20px]">Enjoy on Your TV.</p>
                  <p>
                    Lorem ipsum dolor sit amet, consecetur adipiscing elit, sed
                    do eiusmod tempor.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>
  );
};

export default Home;
