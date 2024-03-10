import React, { useEffect, useState } from "react";
import axios from "axios";
import { Link } from "react-router-dom";
const Tag = ({setTag}) => {
  const [select, setSelect] = useState([]);
  const [showMore, setShowMore] = useState(false);

  useEffect(() => {
    axios.get("http://localhost:3000/tags").then((res) => {
      setSelect(res.data);
    });
  }, []);

  window.onresize = ()=>{if(window.innerWidth > 200){setShowMore(false)}}
  return (
    <div>
      <ul className=" relative flex items-center justify-center gap-4 max-sm-[50px]:gap-0">
        <li className="py-3 px-6 rounded-full border-[3px] border-[#2d303d]">
          Action
        </li>
        <li className="py-3 px-6 rounded-full border-[3px] border-[#2d303d] hidden sm:block">
          Romance
        </li>
        <li className="py-3 px-6 rounded-full border-[3px] border-[#2d303d] hidden lg:block">
          Sience-Fiction
        </li>
        <li
          onClick={() => {
            setShowMore((prev) => !prev);
          }}
          className="py-3 px-6 rounded-full border-[3px] border-[#2d303d] font-bold cursor-pointer"
        >
          +
        </li>
        {showMore && (
          <span className="absolute sm:right-0 -right-[150px] w-[300px] top-[65px] bg-slate-800 border-2 border-slate-500 rounded-lg p-7 z-30 black max-sm-[200px]:block max-h-[200px] overflow-auto">
            <ul className="flex flex-col gap-3">
              {select.map((tag) => {
                return (
                  <Link to="/viewAll">
                    <li
                      id={tag.id}
                      key={tag.id}
                      className="border-2 text-center py-3 px-6 rounded-full hover:border-yellow-400 transition cursor-pointer"
                      onClick={(e)=>{setTag(e.target.id)}}
                    >
                      {tag.tag_name}
                    </li>
                  </Link>
                );
              })}
            </ul>
          </span>
        )}
      </ul>
    </div>
  );
};

export default Tag;
