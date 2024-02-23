import React, { useEffect, useState } from "react";
import axios from "axios";
import { BrowserRouter as Router, Route, Routes, Link } from "react-router-dom";
import Home from "./components/Home";
import NavBar from "./components/NavBar";
import Movies from "./components/Movies.js";
import "./App.css";
import AllFilms from "./components/AllFilms";
import Watch from "./components/Watch";
function App() {
  // const [data, setData] = useState(null);

  // useEffect(() => {
  //   axios.get('http://localhost:3000/film')
  //     .then((response) => {
  //       setData(response.data);
  //       console.log(response.data)
  //     })
  //     .catch((error) => {
  //       console.error('Error fetching data:', error);
  //     });
  // }, []);

  return (
    <div id="parent">
      <Router>
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/movies" element={<Movies />} />
          <Route path="/viewAll" element={<AllFilms />} />
          <Route path="/watch/:idf" element={<Watch />} />
        </Routes>
      </Router>
    </div>
  );
}

export default App;
