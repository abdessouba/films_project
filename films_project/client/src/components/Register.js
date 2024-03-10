import React, { useState } from "react";
import axios from "axios";
const Register = () => {
  const [msg, setMsg] = useState("");
  const Submit = () => {
    let data = {
      fname: fname,
      lname: lname,
      email: email,
      pass: pass,
      confPass: confPass,
    };
    axios
      .post("http://localhost:3000/register", { ...data })
      .then((res) => {
        setMsg(res.data);
      })
      .catch((err) => {
        console.log(err);
      });
  };
  const [fname, setFname] = useState("");
  const [lname, setLname] = useState("");
  const [email, setEmail] = useState("");
  const [pass, setPass] = useState("");
  const [confPass, setConfPass] = useState("");
  return (
    <div>
      <h1 className="text-[40px] font-bold text-white">Register:</h1>
      <p>{msg}</p>
      <div className="flex flex-col">
        <input
          type="text"
          placeholder="First Name..."
          className="text-black w-[300px] p-3 mb-3 mt-5 m-auto rounded-md text-[20px]"
          value={fname}
          onChange={(e) => {
            setFname(e.target.value);
          }}
        />
        <input
          type="text"
          placeholder="Last Name..."
          className="text-black w-[300px] p-3 mb-3 m-auto rounded-md text-[20px]"
          value={lname}
          onChange={(e) => {
            setLname(e.target.value);
          }}
        />
        <input
          type="mail"
          placeholder="Email..."
          className="text-black w-[300px] p-3 mb-3 m-auto rounded-md text-[20px]"
          value={email}
          onChange={(e) => {
            setEmail(e.target.value);
          }}
        />
        <input
          type="password"
          placeholder="Password..."
          className="text-black w-[300px] p-3 mb-3 m-auto rounded-md text-[20px]"
          value={pass}
          onChange={(e) => {
            setPass(e.target.value);
          }}
        />
        <input
          type="password"
          placeholder="Confirm Password..."
          className="text-black w-[300px] p-3 mb-3 m-auto rounded-md text-[20px]"
          value={confPass}
          onChange={(e) => {
            setConfPass(e.target.value);
          }}
        />
        <input
          type="submit"
          value={"Register"}
          className="border-2 border-yellow-300 rounded-lg py-2 px-3 w-[100px] m-auto mt-2 hover:bg-yellow-300 hover:text-black transition cursor-pointer"
          onClick={Submit}
        />
      </div>
    </div>
  );
};

export default Register;
