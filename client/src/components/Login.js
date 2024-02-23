import React, { useState, useEffect,useContext } from "react";
import axios from "axios";
import { MyContext } from "../contexts/Context";
const Login = () => {
  // const {data} = useContext(MyContext)
  // console.log(data)
  const [email, setEmail] = useState("");
  const [pass, setPass] = useState("");
  const submit = () => {
    const data = {
      email: email,
      password: pass,
    };
    axios.post("http://localhost:3000/login", { ...data }).then((res) => {
      console.log(res.data);
    }).catch((err)=>{console.log(err)})
  };
  
  return (
    <div>
      <h1 className="text-[40px] font-bold text-white mb-[80px]">Login:</h1>
      <div className="flex flex-col">
        <input
          type="mail"
          placeholder="Email..."
          name="email"
          className="text-black w-[300px] p-3 mb-3 m-auto rounded-md text-[20px]"
          value={email}
          onChange={(e) => {
            setEmail(e.target.value);
          }}
        />
        <input
          type="password"
          placeholder="Password..."
          name="password"
          className="text-black w-[300px] p-3 mb-3 m-auto rounded-md text-[20px]"
          value={pass}
          onChange={(e) => {
            setPass(e.target.value);
          }}
        />
        <a href="" className="ml-[112px] hover:text-slate-400">
          forget password...
        </a>
        <button
          onClick={submit}
          className="border-2 border-yellow-300 rounded-lg py-2 px-3 w-[100px] m-auto mt-2 hover:bg-yellow-300 hover:text-black transition cursor-pointer"
        >
          Loign
        </button>
      </div>
    </div>
  );
};

export default Login;
