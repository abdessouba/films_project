import axios from "axios";
import React, { useState, createContext, useEffect } from "react";

const MyContext = createContext();
const ContextProvider = ({ children }) => {
  const [tags,setTags] = useState([])

  useEffect(() => {
    axios.get("http://localhost:3000/tags").then((res)=>{
      setTags(res.data)
    })
  }, []);


  return (
    <MyContext.Provider value={{ tags }}>
      {children}
    </MyContext.Provider>
  );
};

export { ContextProvider, MyContext };
